package com.data.xl.distuict;

import com.data.xl.config.common;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;
import com.jfinal.kit.JsonKit;

public class GetPoStatistics extends Controller {
 
	
	public void getPoStatistics() {
		
		String result = HttpKit.post(common.url+"/common/getPoStatistics", "{'PO_CODE':'360702','DIRECTION':'branch'}");
		renderJson(JsonKit.toJson(result));
		
	}
}
