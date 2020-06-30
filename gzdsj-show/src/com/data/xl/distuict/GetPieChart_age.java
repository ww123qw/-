package com.data.xl.distuict;

import com.data.xl.config.common;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;
import com.jfinal.kit.JsonKit;

public class GetPieChart_age extends Controller{
	
	
	
	public void getPieChart() {
		
		
		String result22=HttpKit.post(common.url+"/common/getPieChart", "{'PO_CODE':'360702','PROPERTY':'age'}");
		
		renderJson(JsonKit.toJson(result22));
		
	}

}
