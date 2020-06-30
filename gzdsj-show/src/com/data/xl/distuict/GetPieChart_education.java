package com.data.xl.distuict;

import com.data.xl.config.common;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;
import com.jfinal.kit.JsonKit;

public class GetPieChart_education extends Controller {

	public void getPieChart_education() {
		
		String result23=HttpKit.post(common.url+"/common/getPieChart", "{'PO_CODE':'360702','PROPERTY':'education'}");
		renderJson(JsonKit.toJson(result23));
		
	}
	
}
