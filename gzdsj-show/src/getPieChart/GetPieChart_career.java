package getPieChart;

import com.data.xl.config.common;
import com.jfinal.kit.HttpKit;

import net.sf.json.JSONObject;

public class GetPieChart_career implements Runnable{
      public static JSONObject career;
	@Override
	public void run() {
		career=null;
		String result24=HttpKit.post(common.url+"/common/getPieChart", "{'PO_CODE':'360702','PROPERTY':'career'}");
		JSONObject jo24=JSONObject.fromObject(result24);
		String data24=jo24.getString("data");
		 career=JSONObject.fromObject(data24);
	}

}
