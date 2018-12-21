import java.util.*;

public class Table {
    public static final String CREATE = "CREATE TABLE %s (%s); ";
    public static final String INSERT = "INSERT INTO %s (%s) VALUES (%s); ";
    public static final String COLUMN = "%s %s%s";
    public static final String COLUMN_DELIM = ", ";
    public static final String PRIMARY_KEYS = "PRIMARY KEY (%s)";
    public static final String FOREIGN_KEY = "FOREIGN KEY (%s) REFERENCES %s (%s)";

    private String name;
    private Map<String, Column> columns;
    private List<tableRecord> records;

    public String getName() {
        return this.name;
    }
    public Map<String, Column> getColumns() {
        return this.columns;
    }
    public Column getColumn(String name) {
        return this.columns.getOrDefault(name, null);
    }
    public Table(String name) {
        this(name, new HashMap<>());
    }
    public void addColumn(Column column) { this.columns.put(column.getName(), column); }
    public void addRecord(tableRecord record) { this.records.add(record); }

    public Table(String name, Map<String, Column> columns) {
        this.name = name;
        this.columns = columns;
        this.records = new ArrayList<>();
    }

    public String getTableMetadata() {
        StringBuilder output = new StringBuilder();
        List<String> columns = new ArrayList<>();
        List<String> primaryKeys = new ArrayList<>();

        for (Column column : this.columns.values())
            if (column.isPrimary())
                primaryKeys.add(column.getName());

        for (Column column : this.columns.values()) {
            StringBuilder string = new StringBuilder();

            if (column.isPrimary() && primaryKeys.size() == 1)
                string.append("PRIMARY KEY");

            if (!column.isNullable())
                string.append("NOT NULL");

            if (column.isAutoIncrements())
                string.append("AUTOINCREMENT");

            columns.add(String.format (
                    COLUMN
                    , column.getName()
                    , column.getType()
                    , string.toString()
            ));
        }

        if (primaryKeys.size() > 1)
            columns.add(String.format (
                    PRIMARY_KEYS
                    , String.join(COLUMN_DELIM, primaryKeys)
            ));

        for (Column column : this.columns.values())
            if (column.hasForeignKey())
                columns.add(String.format (
                        FOREIGN_KEY
                        , column.getName()
                        , column.getForeignTable()
                        , column.getForeignColumn()
                ));

        output.append(String.format (
                CREATE
                , this.getName()
                , String.join(COLUMN_DELIM, columns)
        ));

        return output.toString();

    }

    public String getRecordMetadata() {
        StringBuilder output = new StringBuilder();

        for (tableRecord record : this.records) {
            StringBuilder columns = new StringBuilder();
            StringBuilder values = new StringBuilder();

            for (Map.Entry<String, String> cell : record.entrySet()) {
                String value = cell.getValue();
                columns.append(cell.getKey() + COLUMN_DELIM);
                values.append("\"" + (value != null ? value.replace("\"", "\\\"") : "") + "\"" + COLUMN_DELIM);
            }

            output.append(String.format (
                    INSERT
                    , this.getName()
                    , columns.substring(0, columns.length() - COLUMN_DELIM.length())
                    , values.substring(0, values.length() - COLUMN_DELIM.length())
            ) + System.lineSeparator());
        }
        return output.toString();
    }

    public List<Column> getForeignColumns() {
        List<Column> columns = new ArrayList<>();

        for (Column column : this.columns.values())
            if (column.hasForeignKey())
                columns.add(column);

        return columns;
    }

    public List<Column> getPrimaryColumns() {
        List<Column> columns = new ArrayList<>();

        for (Column column : this.columns.values())
            if (column.isPrimary())
                columns.add(column);

        return columns;
    }
}
