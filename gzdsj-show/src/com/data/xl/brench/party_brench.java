package com.data.xl.brench;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.data.xl.config.common;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


/**
 * 
 * 
 * 支部界面
 */
public class party_brench extends Controller{

	/**
	 * 
	 * 组织生活正常情况
	 */
	
	public void brenchData() {
		
		String code = getPara("code");
//		String param = HttpKit.readData(getRequest());
//		JSONObject jo = JSONObject.fromObject(param);
//		String code = jo.getString("PO_CODE");
		
		// 组织生活正常情况列表
					String result1 = HttpKit.post(common.url + "/branch_committee/getPoLifeList","{'PO_CODE':'" + code + "'}");
					renderJson(result1);
		
	}
	/**
	 * 
	 * 支部考核总体情况
	 * 
	 */
	
	public void getOverallTestTrend() {
		String code = getPara("code");
//		String param = HttpKit.readData(getRequest());
//		JSONObject jo = JSONObject.fromObject(param);
//		String code = jo.getString("CODE");
		String result1 = HttpKit.post(common.url + "/common/getOverallTestTrend","{'CODE':'" + code + "','TYPE':'pocode'}");
		renderJson(result1);
		
		
	}
	/**
	 * 
	 * 
	 * 
	 * 支部下党员app使用情况
	 */
	
	public void brenchApp() {
		String code = getPara("code");
//		String param = HttpKit.readData(getRequest());
//		JSONObject jo = JSONObject.fromObject(param);
//		String code = jo.getString("CODE");
		String result1 = HttpKit.post(common.url + "/common/brenchApp","{'CODE':'" + code + "'}");
		renderJson(result1);
		
		
	}
	/**
	 * 
	 * 
	 * 
	 * 支部下党员排名
	 */
	
	public void gatPmSeRanka() {
		String code = getPara("code");
//		String param = HttpKit.readData(getRequest());
//		JSONObject jo = JSONObject.fromObject(param);
//		String code = jo.getString("CODE");
		String result1 = HttpKit.post(common.url + "/party_member/gatPmSeRanka", "{'PO_CODE':'"+code+"'}");
		renderJson(result1);
		
		
	}
	/**
	 * 
	 * 
	 * 
	 * 支部下党员的党员生后综合情况
	 */
	
	public void getPmLifeSan() {
		String code = getPara("code");
//		String param = HttpKit.readData(getRequest());
//		JSONObject jo = JSONObject.fromObject(param);
//		String code = jo.getString("CODE");
		String result1 = HttpKit.post(common.url + "/party_member/getPmLifeSan", "{'CODE':'"+code+"'}");
		renderJson(result1);
		
		
	}
	
	/**
	 * 
	 * 
	 * 
	 * 支部组织生活全年统计
	 */
	
	public void getAllPoLife() {
		String code = getPara("code");
//		String param = HttpKit.readData(getRequest());
//		JSONObject jo = JSONObject.fromObject(param);
//		String code = jo.getString("CODE");
		String result1 = HttpKit.post(common.url + "/party_committee/getAllPoLife", "{'CODE':'"+code+"'}");
		renderJson(result1);
		
		
	}
	
	/**
	 * 
	 * 
	 * 
	 * 支部组织生活全年统计
	 */
	
	public void getPoLoinsum() {
		String code = getPara("code");
//		String param = HttpKit.readData(getRequest());
//		JSONObject jo = JSONObject.fromObject(param);
//		String code = jo.getString("CODE");
		String result1 = HttpKit.post(common.url + "/party_committee/getPoLoinsum", "{'CODE':'"+code+"'}");
		renderJson(result1);
		
		
	}
	
	/**
	 * 
	 * 
	 * 
	 * 支部组织每日登入统计
	 */
	
	public void pmLoindata() {
		String code = getPara("code");
		String result1 = HttpKit.post(common.url + "/common/pmLoindata", "{'CODE':'"+code+"'}");
		renderJson(result1);
		
		
	}
	/**
	 * 
	 * 
	 * 
	 * 支部组织每日登入统计
	 */
	
	public void getName() {
		String code = getPara("code");
		String result1 = HttpKit.post(common.url + "/party_member/getName", "{'code':'"+code+"'}");
		renderJson(result1);
		
		
	}
}
