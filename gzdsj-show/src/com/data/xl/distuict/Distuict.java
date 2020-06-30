package com.data.xl.distuict;

import com.data.xl.config.common;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;
import com.jfinal.kit.JsonKit;

public class Distuict extends Controller {

	
public void getOrptree() {
		
		String code = getPara("code");
		String result= HttpKit.post(common.url+"/common/Party_brench", "{'PO_CODE':'"+code+"'}");
	    renderJson(result);
	}	
	
	
public void getPieChart() {
	
	String code = getPara("code");
	String result22=HttpKit.post(common.url+"/common/getPieChart", "{'PO_CODE':'"+code+"','PROPERTY':'age'}");
	
	renderJson(result22);
	
}

/**
 * 职业饼图
 */
public void getPieChart_career() {
	String code = getPara("code");
	String result24=HttpKit.post(common.url+"/common/getPieChart", "{'PO_CODE':'"+code+"','PROPERTY':'career'}");
	renderJson(result24);
}
	/**
	 * 教育饼图
	 * 
	 * 
	 */
public void getPieChart_education() {
	String code = getPara("code");
	String result23=HttpKit.post(common.url+"/common/getPieChart", "{'PO_CODE':'"+code+"','PROPERTY':'education'}");
	renderJson(result23);
	
}
/**
 * 
 * 
 * 
 */
public void getPieChart_ethnic() {
	String code = getPara("code");
	String result25=HttpKit.post(common.url+"/common/getPieChart", "{'PO_CODE':'"+code+"','PROPERTY':'ethnic'}");
	renderJson(result25);
}
/**
 * 
 * 性别饼图
 * 
 */
public void getPieChart_sex() {
	String code = getPara("code");
	  String result21=HttpKit.post(common.url+"/common/getPieChart", "{'PO_CODE':'"+code+"','PROPERTY':'sex'}");
renderJson(result21);
}
/**
 * 
 * 
 * 
 */
public void getPmOvera() {
	String code = getPara("code");
	String result21=HttpKit.post(common.url+"/district_committee/districtCouncilLifeStatusList", "{'PO_CODE':'"+code+"'}");
renderJson(result21);
}
/**
 * 
 * 
 */
public void getOverallTestTrend() {
	String code = getPara("code");
	String result24=HttpKit.post(common.url+"/common/getOverallTestTrend", "{'CODE':'"+code+"','TYPE':'pocode'}");
	renderJson(result24);
}
/**
 * 
 * 
 */
public void getPoStatistics() {
	String code = getPara("code");
	String result = HttpKit.post(common.url+"/common/getPoStatistics", "{'PO_CODE':'"+code+"','DIRECTION':'branch'}");
	renderJson(result);
	
}
/**
 * 
 * 
 */
public void panks() {
	String code = getPara("code");
	String result2 = HttpKit.post(common.url + "/party_committee/gatPoSeRanka","{'PO_CODE':'"+code+"'}");
	
	renderJson(result2);
}

/**
 * 
 * 党委数GetStData
 */
public void getStData() {
	String code = getPara("code");
	String result=HttpKit.post(common.url+"/dpData/getdata", "{'PO_CODE':'"+code+"'}");
	
	renderJson(result);
}
/**
 * 
 * 
 * 
 */
public void getPoOvera() {
	String code = getPara("code");
	String result21=HttpKit.post(common.url+"/common/getPmOvera", "{'PO_CODE':'"+code+"'}");
renderJson(result21);
}
}
