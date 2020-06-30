package com.data.xl.distuict;

import com.data.xl.config.common;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;
import com.jfinal.kit.JsonKit;

public class GetOrptree extends Controller {
 
	public void getOrptree() {
		
		String code = getPara("code");
		String result= HttpKit.post(common.url+"/common/Party_brench", "{'PO_CODE':'"+code+"'}");
	    renderJson(JsonKit.toJson(result));
	}
	
	
}
