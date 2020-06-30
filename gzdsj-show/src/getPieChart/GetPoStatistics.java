package getPieChart;

import com.data.xl.config.common;
import com.jfinal.kit.HttpKit;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class GetPoStatistics implements Runnable{
    public static JSONArray stapo;
	@Override
	public void run() {
		String result = HttpKit.post(common.url+"/common/getPoStatistics", "{'PO_CODE':'360702','DIRECTION':'branch'}");
		JSONObject jo = JSONObject.fromObject(result);
		String data = jo.getString("data");
		 stapo = JSONArray.fromObject(data);
	}

}
