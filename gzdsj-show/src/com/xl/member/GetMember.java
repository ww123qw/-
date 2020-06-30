package com.xl.member;

import com.data.xl.config.common;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;
import com.jfinal.kit.JsonKit;

public class GetMember extends Controller {

	/**
	 * 
	 * 党员基本信息
	 */
	public void getMember() {
		
		String code=getPara("code");
		String result=HttpKit.post(common.url+"/party_member/getMember", "{'PM_CODE':'"+code+"'}");
		
		renderJson(JsonKit.toJson(result));
	}
	
	
	
	public void getP() {
		
		String code=getPara("code");
		String result=HttpKit.post(common.url+"/party_member/getP", "{'PM_CODE':'"+code+"'}");
		renderJson(JsonKit.toJson(result));
	}
	/**
	 * 
	 * 党员界面学习界面
	 */
	public void pmLearning() {
		
		String code=getPara("code");
		String result = HttpKit.post(common.url + "/common/PmLearning","{'PM_CODE':'" + code + "'}");
		renderJson(JsonKit.toJson(result));
		
	}
	/**
	 * 
	 * 党员生活
	 */
	public void getPmLifeL() {
		String code=getPara("code");
		String result=HttpKit.post(common.url+"/party_member/getPmLifeL", "{'PM_CODE':'"+code+"'}");
		renderJson(JsonKit.toJson(result));
		
	} 
}
