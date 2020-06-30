package com.data.xl.Committee;

import com.data.xl.config.common;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;

import net.sf.json.JSONObject;

public class getPmOvera extends Controller{

	public void getPmOveradata() {
		
//		String code = getPara("code");
//		String type = getPara("type");
		String param = HttpKit.readData(getRequest());
		JSONObject jo = JSONObject.fromObject(param);
		String code = jo.getString("PO_CODE");
		String result = HttpKit.post(common.url + "/common/getPmOvera", "{'PO_CODE':'" + code + "'}");
		
		renderJson(result);
		
		
	}
	
	
}
