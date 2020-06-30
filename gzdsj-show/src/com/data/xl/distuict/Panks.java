package com.data.xl.distuict;

import com.data.xl.config.common;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;
import com.jfinal.kit.JsonKit;

public class Panks extends Controller {

	
	public void panks() {
		
		String result2 = HttpKit.post(common.url + "/party_committee/gatPoSeRanka","{'PO_CODE':'360702'}");
		
		renderJson(JsonKit.toJson(result2));
	}
}
