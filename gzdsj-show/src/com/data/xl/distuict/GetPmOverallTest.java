package com.data.xl.distuict;

import com.data.xl.config.common;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;

public class GetPmOverallTest extends Controller {

	
	public void getPmOverallTest() {
		String code = getPara("code");
		String result24=HttpKit.post(common.url+"/common/getPmOvera", "{'PO_CODE':'"+code+"'}");
		
	}
}
