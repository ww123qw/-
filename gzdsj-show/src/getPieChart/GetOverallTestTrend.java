package getPieChart;

import com.data.xl.config.common;
import com.jfinal.kit.HttpKit;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class GetOverallTestTrend implements Runnable{
   public static JSONArray list_OverallTestTrend;
	@Override
	public void run() {
		
		String result = HttpKit.post(common.url+"/common/getOverallTestTrend", "{'CODE':'360702','TYPE':'pocode'}");
	    JSONObject jo = JSONObject.fromObject(result);
	    list_OverallTestTrend = JSONArray.fromObject(jo.get("data"));
	    System.out.println(list_OverallTestTrend);
   }

}
