package getPieChart;

import com.data.xl.config.common;
import com.jfinal.kit.HttpKit;
import com.jfinal.plugin.activerecord.Db;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class GetParty_brench implements Runnable{
	
	private String code;
	public static JSONArray list;
	public GetParty_brench(String code) {
		this.code=code;
	}

	



	@Override
	public void run() {
		
		String result  = HttpKit.post(common.url+"/party_member/Party_memenbersum", "{'PO_CODE':'"+code+"'}");
		 list =  JSONArray.fromObject(result);
	System.out.println(list);
	}
       public String getCode() {
		return code;
	}
}
