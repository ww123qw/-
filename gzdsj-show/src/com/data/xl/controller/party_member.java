package com.data.xl.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.data.xl.config.common;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class party_member extends Controller{

	
	/**
	 * 
	 * 党员基本信息
	 */
	public void index() {
		Date date=new Date();
		SimpleDateFormat form=new SimpleDateFormat("YYYY-MM");
		String formyear=form.format(date);
		String year=formyear.substring(0, 4);
		int month = Integer.parseInt(formyear.substring(5, 7));
		setAttr("month", month);
		setAttr("year", year);
		setAttr("yearmonth", formyear);
		String code=getPara("code");
		/*String result=HttpKit.post(common.url+"/party_member/getMember", "{'PM_CODE':'"+code+"'}");
		JSONObject jo=JSONObject.fromObject(result);
		Object map=jo.get("data");
		System.out.println(map);
		setAttr("member_info", map);
		
		String result1=HttpKit.post(common.url+"/party_member/getP", "{'PM_CODE':'"+code+"'}");
		JSONObject jo1=JSONObject.fromObject(result1);
		Object map1=jo1.get("data");
		setAttr("singleCheck", map1);
		
		String result2 = HttpKit.post(common.url + "/common/getOverallTestTrend","{'CODE':'" + code + "','TYPE':'pmcode'}");
		JSONObject jo2 = JSONObject.fromObject(result2);
		List<String> listscord = new ArrayList<String>();
		JSONArray js = JSONArray.fromObject(jo2.getJSONArray("data"));
		setAttr("checklist", js);
		
		//学习折线
		String result2x = HttpKit.post(common.url + "/common/PmLearning","{'PM_CODE':'" + code + "'}");
		JSONObject jo2x = JSONObject.fromObject(result2x);
		String ffff= jo2x.getString("dayline");
		JSONArray jo2x1 = JSONArray.fromObject(ffff);
		
//		String fffff = jo2x1.getString("1");
		
		
		setAttr("learning", jo2x);
		
		String result3=HttpKit.post(common.url+"/party_member/getPmLifeL", "{'PM_CODE':'"+code+"'}");
		JSONObject jo3=JSONObject.fromObject(result3);
		List<Map<String,Object>> list=new ArrayList<>();
		Object map3=jo3.get("data");
		 String content;
		 int y;
		 if(JSONArray.fromObject(map3).size()>8) {
			 y=8;
		 }else {
			 y=JSONArray.fromObject(map3).size();
		 }
		for(int i=0;i<y;i++) {
			Map<String,Object> mapdata=new HashMap<>();
			JSONObject js1=JSONObject.fromObject(JSONArray.fromObject(map3).get(i));
			if(js1.getString("PMLITE_DETAILS").length()>20) {
				  content=js1.getString("PMLITE_DETAILS").substring(0, 20);
			}else {
				 content=js1.getString("PMLITE_DETAILS").substring(0, js1.getString("PMLITE_DETAILS").length());
			}
		   mapdata.put("PMLIFE_ID", js1.getString("PMLIFE_ID"));
		   String co=js1.getString("PMLITE_LABEL");
		   if(co.equals("null")) {
			   mapdata.put("PMLITE_LABEL", "");
		   }else {
			   mapdata.put("PMLITE_LABEL", js1.getString("PMLITE_LABEL"));
		   }
		   mapdata.put("PICTURE", js1.getJSONArray("PICTURE"));
		   mapdata.put("ACTIVITY_TIME", js1.getString("ACTIVITY_TIME"));
		   mapdata.put("PMLITE_DETAILS", js1.getString("PMLITE_DETAILS"));
		   mapdata.put("SUMMARY", content);
		   list.add(mapdata);
		}
		setAttr("pmActList", list);*/
		renderJsp("/view/party_member2.jsp");
	}
}
