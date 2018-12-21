public class Column {
    private String name;
    private String type;
    private String foreignTable;
    private String foreignColumn;
    private boolean nullable;
    private boolean primary;
    private boolean autoIncrements;

    public Column(String name, String type, boolean nullable, boolean autoIncrements) {
        this.name = name;
        this.type = type;
        this.nullable = nullable;
        this.autoIncrements = autoIncrements;
        this.primary = false;
        this.foreignTable = null;
        this.foreignColumn = null;
    }

    public void setPrimary(boolean primary) { this.primary = primary; }
    public String getName() { return this.name; }
    public String getType() { return this.type; }
    public String getForeignTable() { return this.foreignTable; }
    public String getForeignColumn() { return this.foreignColumn; }
    public boolean isNullable() { return this.nullable; }
    public boolean isPrimary() { return this.primary; }
    public boolean isAutoIncrements() { return this.autoIncrements; }
    public boolean hasForeignKey() {
        return this.foreignTable != null && this.foreignColumn != null;
    }

    public void addForeignKey(String referenceTable, String referenceColumn) {
        this.foreignTable = referenceTable;
        this.foreignColumn = referenceColumn;
    }
}
