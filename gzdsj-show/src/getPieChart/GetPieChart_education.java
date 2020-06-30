package getPieChart;

import com.data.xl.config.common;
import com.jfinal.kit.HttpKit;

import net.sf.json.JSONObject;

public class GetPieChart_education implements Runnable{
    public static JSONObject education;
	@Override
	public void run() {
		education=null;
		String result23=HttpKit.post(common.url+"/common/getPieChart", "{'PO_CODE':'360702','PROPERTY':'education'}");
		JSONObject jo23=JSONObject.fromObject(result23);
		String data23=jo23.getString("data");
		 education=JSONObject.fromObject(data23);
		
	}

}
