import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;

public class Driver {
    public static void main(String args[]) {
        if (args.length == 0) {
            System.err.println("No file specified");
            return;
        }

        String file = args[0];
        String schema = "";
        Metadata metadata;

        try {
            metadata = new Metadata(new File(args[0]));
            System.out.println("Getting metadata.... ");
            schema = metadata.getMetadata();
        } catch (FileNotFoundException e) {
            System.err.println("File cannot be found");
            return;
        } catch (Exception e) {
            e.printStackTrace();
            return;
        }

        try {
            PrintWriter writer = new PrintWriter(file + ".sql");
            writer.print(schema);
            writer.close();
        } catch (Exception e) {
            System.err.println("There was a problem saving the file.");
        }

        try {
            PrintWriter writer = new PrintWriter("output" + ".sql");
            writer.print(schema);
            writer.close();
        } catch (Exception e) {
            System.err.println("There was a problem saving the file.");
        }
        System.out.println("The textual backup has been saved.");
    }
}


