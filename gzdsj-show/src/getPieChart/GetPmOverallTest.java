package getPieChart;

import com.data.xl.config.common;
import com.jfinal.kit.HttpKit;

import net.sf.json.JSONObject;

public class GetPmOverallTest implements Runnable{
     public static JSONObject overdata;
     public static JSONObject overdatamap;
     private String code;
     
	public GetPmOverallTest(String code) {
    	 this.code=code;
     }
	@Override
	public void run() {
		
		String result24=HttpKit.post(common.url+"/common/getPmOvera", "{'PO_CODE':'"+code+"'}");
		JSONObject jo24=JSONObject.fromObject(result24);
		String data24=jo24.getString("data");
		 overdata=JSONObject.fromObject(data24);
		 String result=HttpKit.post(common.url+"/common/BrenchRanking", "{'CODE':'"+code+"'}");
			 overdatamap=JSONObject.fromObject(result);
//			String data=jo.getString("data");
//			overdatamap=JSONObject.fromObject(data);
	}
public String getCode() {
		return code;
	}
}
