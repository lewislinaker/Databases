import java.io.File;
import java.io.FileNotFoundException;
import java.sql.*;
import java.util.*;

public class Metadata {
    private static final String DRIVER = "org.sqlite.JDBC";
    private static final String DB_URL = "jdbc:sqlite:%s";
    private static final String[] TABLE_TYPES = {"TABLE"};
    private Connection connection;
    private Map<String, Table> tables;
    private void addTable(String name, Table table) { this.tables.put(name, table); }

    public Metadata(File database) throws FileNotFoundException, RuntimeException {
        if (!database.exists() || !database.canRead()) throw new FileNotFoundException();

        try {
            Class.forName(DRIVER);
            this.connection = DriverManager.getConnection(String.format(DB_URL, database.getAbsolutePath()));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        this.tables = new HashMap<>();
    }

    public String getMetadata() throws Exception {
        DatabaseMetaData metadata = this.connection.getMetaData();
        String catalog = null;
        StringBuilder output = new StringBuilder();

        ResultSet tables = metadata.getTables(catalog, null, null, TABLE_TYPES);

        while (tables.next()) {
            Table table = new Table(tables.getString("TABLE_NAME"));
            ResultSet columns = metadata.getColumns(catalog, null, table.getName(), null);

            while (columns.next()) {
                Column column = new Column (
                        columns.getString("COLUMN_NAME")
                        , columns.getString("TYPE_NAME")
                        , columns.getInt("NULLABLE") == 1
                        , false
                );
                table.addColumn(column);
            }

            ResultSet PK = metadata.getPrimaryKeys(catalog, null, table.getName());
            while (PK.next()) {
                Column column = table.getColumn(PK.getString("COLUMN_NAME"));

                if (column != null)
                    column.setPrimary(true);
            }

            ResultSet FK = metadata.getImportedKeys(catalog, null, table.getName());
            while (FK.next()) {
                Column column = table.getColumn(FK.getString("FKCOLUMN_NAME"));

                if (column != null)
                    column.addForeignKey (
                            FK.getString("PKTABLE_NAME")
                            , FK.getString("PKCOLUMN_NAME")
                    );
            }

            String query = String.format("SELECT * FROM %s; ", table.getName());
            Statement statement = null;

            try {
                statement = this.connection.createStatement();
                ResultSet results = statement.executeQuery(query);

                while (results.next()) {
                    tableRecord record = new tableRecord();
                    for (Column column : table.getColumns().values())
                        record.put(column.getName(), results.getString(column.getName()));

                    table.addRecord(record);
                }
            } finally {
                if (statement != null)
                    statement.close();
            }
            this.addTable(table.getName(), table);
        }

        List<Column> primaryColumns = new ArrayList<>();
        Collection<Table> unparsedTables = new ArrayList<>(this.tables.values());

        while (unparsedTables.size() > 0) {
            Iterator<Table> iterator = unparsedTables.iterator();

            while (iterator.hasNext()) {
                Table table = iterator.next();
                boolean parasable = false;
                List<Column> foreignColumns = table.getForeignColumns();

                if (foreignColumns.size() > 0)
                    for (Column foreign : foreignColumns)
                        for (Column primary : primaryColumns) {
                            if (foreign.getForeignColumn().equals((primary.getName())))
                                parasable = true;
                        }

                if (parasable || foreignColumns.size() == 0 || unparsedTables.size() == 1) {
                    primaryColumns.addAll(table.getPrimaryColumns());
                    output.append(table.getTableMetadata() + System.lineSeparator());
                    iterator.remove();
                }
            }
        }

        output.append(System.lineSeparator());

        for (Table table : this.tables.values())
            output.append(table.getRecordMetadata() + System.lineSeparator());

        return output.toString();
    }
}