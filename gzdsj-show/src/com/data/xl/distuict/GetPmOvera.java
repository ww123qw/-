package com.data.xl.distuict;

import com.data.xl.config.common;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;
import com.jfinal.kit.JsonKit;

public class GetPmOvera extends Controller {
 
	
	public void getPmOvera() {
		
		String result21=HttpKit.post(common.url+"/district_committee/districtCouncilLifeStatusList", "{'PO_CODE':'360702'}");
	renderJson(JsonKit.toJson(result21));
	}
}
