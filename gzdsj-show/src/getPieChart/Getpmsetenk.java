package getPieChart;

import java.util.Collections;
import java.util.Comparator;
import java.util.Map;

import com.data.xl.config.common;
import com.jfinal.kit.HttpKit;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class Getpmsetenk implements Runnable{
    private String code;
	public static JSONArray seRankalist;

	public Getpmsetenk(String code) {
		this.code=code;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public void run() {
		String result = HttpKit.post(common.url+"/party_member/gatPmSeRanka", "{'PO_CODE':'"+code+"'}");
		JSONObject jo = JSONObject.fromObject(result);
		seRankalist = JSONArray.fromObject(jo.getString("data"));
		Collections.sort(seRankalist, new Comparator<Map<String,Object>>() {

			

			@Override
			public int compare(Map<String, Object> o1, Map<String, Object> o2) {
			Integer pank1 = Integer.valueOf(o1.get("PM_RANK").toString());
			Integer pank2 = Integer.valueOf(o2.get("PM_RANK").toString());
				return pank1.compareTo(pank2);
			}
		});
		
		
	}
public String getCode() {
		return code;
	}
}
