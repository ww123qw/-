package getPieChart;

import com.data.xl.config.common;
import com.jfinal.kit.HttpKit;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class GetOrptree implements Runnable{
     private String code;
     public static JSONArray orptree;
     public GetOrptree(String code) {
    	 this.code=code;
     }
	

	@Override
	public void run() {
		
		String result= HttpKit.post(common.url+"/common/Party_brench", "{'PO_CODE':'"+code+"'}");
		 orptree = JSONArray.fromObject(result);
	}
	
    public String getCode() {
		return code;
	}
}
