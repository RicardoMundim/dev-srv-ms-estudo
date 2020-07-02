package utilitarios;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class Funcoes {

    Funcoes() {
    }

    public static String returnEnvironment() {

        return System.getProperty("environment");
    }

    public static Properties getprop() throws IOException {

        Properties props = new Properties();
        props.load(new FileInputStream("./properties/dados.properties"));

        return props;
    }

    public static String generateID() {
        String text = "";
        String possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

        for (int i = 0; i < 27; i++)
            text += possible.charAt(new Double(Math.floor(Math.random() * possible.length())).intValue());

        return text;
    }
}
