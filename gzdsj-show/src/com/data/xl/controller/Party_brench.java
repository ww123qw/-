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

import getPieChart.GetOrptree;
import getPieChart.GetParty_brench;
import getPieChart.GetPmOverallTest;
import getPieChart.Getpmsetenk;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class Party_brench extends Controller{
	
	public void index() {
		String code=getPara("code");
		// 当前时间
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
					Date date = new Date();
					String today = sdf.format(date);
					int mont=Integer.valueOf(today.substring(5,7));
					setAttr("time", today);
					setAttr("mont", mont);
		// 组织领导
//					String code = getPara("code");
//					String type = getPara("type");
//					String typecode = getPara("typecode");
//					String password = Encrypt.doStrByMD5(getPara("password"));
					String result = HttpKit.post(common.url + "/common/Leader", "{'PO_CODE':'" + code + "'}");
					JSONObject object = JSONObject.fromObject(result);
					String data_leader_list = object.getString("data");
					JSONArray data1 = JSONArray.fromObject(data_leader_list);
					List<Map<String,Object>> list_fsj = new ArrayList<>();
					List<Map<String,Object>> list_dyuan = new ArrayList<>();
					for (int i = 0; i < data1.size(); i++) {
						Map<String,Object> map = new HashMap<>();
						JSONObject data11 = JSONObject.fromObject(data1.get(i));
						String data111 = (String) data11.get("LEADER_TYPE");
		                map.put("HEAD_IMG",(String) data11.get("HEAD_IMG"));//head_url
		                map.put("PM_CODE",(String) data11.get("PM_CODE"));//party memenber code
		                map.put("LEADER_NAME",(String) data11.get("LEADER_NAME"));//party memenber name
						if (data11.get("LEADER_TYPE").equals("1")) {
							setAttr("shuji", map);
		                    
						}
						if (data11.get("LEADER_TYPE").equals("2")) {
							list_fsj.add(map);
							
//							setAttr("fushuji", data11.get("LEADER_NAME"));
						}
						if (data11.get("LEADER_TYPE").equals("3")) {
//							setAttr("dangwei", data11.get("LEADER_NAME"));
							list_dyuan.add(map);
						}
						
					}
					setAttr("fushuji", list_fsj);
					setAttr("dangwei", list_dyuan);
		Getpmsetenk getpmsetenk = new Getpmsetenk(code);
		Thread t2 = new Thread(getpmsetenk);
		t2.start();
		while(t2.isAlive()) {}
		setAttr("memb_list1", Getpmsetenk.seRankalist);
		renderJsp("/view/party_branch2.jsp");
	}

}
