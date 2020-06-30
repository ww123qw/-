package getPieChart;

import com.data.xl.config.common;
import com.jfinal.kit.HttpKit;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class GetPmOvera implements Runnable{
     public static JSONArray  po_overa;
	@Override
	public void run() {
		po_overa=null;
		String result21=HttpKit.post(common.url+"/district_committee/districtCouncilLifeStatusList", "{'PO_CODE':'360702'}");
		JSONObject jo21=JSONObject.fromObject(result21);
		String data21=jo21.getString("data");
			 po_overa=JSONArray.fromObject(data21);
	}

}
