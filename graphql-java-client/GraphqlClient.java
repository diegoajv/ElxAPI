import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public class GraphqlClient {
    public static void main(String args[]) {
        System.out.print("GraphQL Client - Java");

        String graphqlServerQueryUrl = "http://localhost:4000/api?query=";
        String graphqlQuery = "{posts{title,body}}";

        try {
            URL serverUrl = new URL(graphqlServerQueryUrl + graphqlQuery);
            
            try {
                HttpURLConnection con = (HttpURLConnection) serverUrl.openConnection();
                con.setRequestMethod("GET");

                BufferedReader reader = new BufferedReader(new InputStreamReader(con.getInputStream()));
                String serverResponse;
                StringBuilder queryResult = new StringBuilder();

                while ((serverResponse = reader.readLine()) != null) {
                    queryResult.append(serverResponse);
                }

                reader.close();
                System.out.println(queryResult);
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
    }
}
