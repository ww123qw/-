package com.data.xl.distuict;

import com.data.xl.config.common;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;
import com.jfinal.kit.JsonKit;

public class GetPieChart_career extends Controller{

	
	
	public void getPieChart_career() {
		
		String result24=HttpKit.post(common.url+"/common/getPieChart", "{'PO_CODE':'360702','PROPERTY':'career'}");
		renderJson(JsonKit.toJson(result24));
	}
}
