package getPieChart;

import com.data.xl.config.common;
import com.jfinal.kit.HttpKit;

import net.sf.json.JSONObject;

public class GetPieChart_ethnic implements Runnable{
    public static JSONObject ethnic;
	@Override
	public void run() {
		ethnic=null;
		String result25=HttpKit.post(common.url+"/common/getPieChart", "{'PO_CODE':'360702','PROPERTY':'ethnic'}");
		JSONObject jo25=JSONObject.fromObject(result25);
		String data25=jo25.getString("data");
		 ethnic=JSONObject.fromObject(data25);
	}

}
