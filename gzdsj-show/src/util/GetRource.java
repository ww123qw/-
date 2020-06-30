package util;

import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

public class GetRource {

	

	public static boolean getRource(String source) {  
        try {  
            URL url = new URL(source);
            URLConnection uc = url.openConnection();
            InputStream in = uc.getInputStream();
            if (source.equalsIgnoreCase(uc.getURL().toString())) 
            in.close();  
            return true;  
        } catch (Exception e) {  
            return false;  
        }  
    }

}
