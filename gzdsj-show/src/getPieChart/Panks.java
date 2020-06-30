package getPieChart;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

import com.data.xl.config.common;
import com.jfinal.kit.HttpKit;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class Panks implements Runnable{
   public static  JSONArray comm_list;
	@SuppressWarnings("unchecked")
	@Override
	public void run() {
		
		String result2 = HttpKit.post(common.url + "/party_committee/gatPoSeRanka","{'PO_CODE':'360702'}");
        JSONObject jodw=JSONObject.fromObject(result2);
        String data=jodw.getString("data");
        comm_list=JSONArray.fromObject(data);
        Collections.sort(comm_list, new Comparator<Map<String,Object>>() {

			@Override
			public int compare(Map<String, Object> o1, Map<String, Object> o2) {
				Integer pank1 = Integer.parseInt(o1.get("PO_RANK").toString());
				Integer pank2 = Integer.parseInt(o2.get("PO_RANK").toString());
				return pank1.compareTo(pank2);
			}
		});

	}

}
