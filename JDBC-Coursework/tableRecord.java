import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class tableRecord {
    private Map<String, String> data;

    public tableRecord() {
        this.data = new HashMap<>();
    }
    public void put(String key, String value) { this.data.put(key, value); }
    public Set<Map.Entry<String, String>> entrySet() {
        return this.data.entrySet();
    }
}
