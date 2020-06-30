package getPieChart;

import com.data.xl.config.common;
import com.jfinal.kit.HttpKit;

import net.sf.json.JSONObject;

public class GetPieChart_sex implements Runnable{
	public  static JSONObject sex;
	@Override
	public void run() {
	
		String result21=HttpKit.post(common.url+"/common/getPieChart", "{'PO_CODE':'360702','PROPERTY':'sex'}");
		JSONObject jo21=JSONObject.fromObject(result21);
		String data21=jo21.getString("data");
			 sex=JSONObject.fromObject(data21);
//		      sex1=sex;
//		setAttr("sex", sex);
	
	}

}
