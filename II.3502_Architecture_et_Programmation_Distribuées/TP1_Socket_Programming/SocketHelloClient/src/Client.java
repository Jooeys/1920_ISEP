import java.io.*;
import java.net.Socket;
import java.net.UnknownHostException;

public class Client {
    public static void main(String[] args) {
        try {
            Socket socketClient = new Socket("localhost", 5555);
            System.out.println("Client: " + "Connection Established");
            BufferedReader reader = new BufferedReader(new
                    InputStreamReader(socketClient.getInputStream()));
            BufferedWriter writer = new BufferedWriter(new
                    OutputStreamWriter(socketClient.getOutputStream()));
            String serverMsg;
            serverMsg = reader.readLine().trim();
            System.out.println(reader.readLine().trim());
            writer.write("8\t\n");
            writer.write("10\t\n");
            writer.flush();
            
            Thread.sleep(100);
            System.out.println(reader.readLine().trim());
            System.out.println(reader.readLine().trim());
            
        } catch (IOException | InterruptedException e) {
        	
            e.printStackTrace();
        }
    }
}