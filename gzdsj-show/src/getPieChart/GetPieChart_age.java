package getPieChart;

import com.data.xl.config.common;
import com.jfinal.kit.HttpKit;

import net.sf.json.JSONObject;

public class GetPieChart_age implements Runnable{
	public  static JSONObject age1;
	@Override
	public void run() {
		age1=null;
		String result22=HttpKit.post(common.url+"/common/getPieChart", "{'PO_CODE':'360702','PROPERTY':'age'}");
		JSONObject jo22=JSONObject.fromObject(result22);
		String data22=jo22.getString("data");
		 age1=JSONObject.fromObject(data22);
//		setAttr("age", age1);
	}

}
