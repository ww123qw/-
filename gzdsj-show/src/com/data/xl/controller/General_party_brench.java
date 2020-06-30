package com.data.xl.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.data.xl.config.common;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


public class General_party_brench extends Controller{
	
	
	@SuppressWarnings("unchecked")
	public void index() {
		Date date = new Date();
		SimpleDateFormat form = new SimpleDateFormat("YYYY-MM");
		String formyear = form.format(date);
		String year = formyear.substring(0, 4);
		int month = Integer.parseInt(formyear.substring(5, 7));
		setAttr("year", year);
		setAttr("month", month-1);
		setAttr("months", month);
		String code = getPara("code");
		String type =getPara("type");
		setAttr("type", type);
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
//				setAttr("fushuji", data11.get("LEADER_NAME"));
				list_fsj.add(map);
			}
			if (data11.get("LEADER_TYPE").equals("3")) {
//				setAttr("dangwei", data11.get("LEADER_NAME"));
				list_dyuan.add(map);
			}
		}
		
		setAttr("fushuji", list_fsj);
		setAttr("dangwei", list_dyuan);
		/*// 曲状图
					String result1 = HttpKit.post(common.url + "/common/getOverallTestTrend","{'CODE':'" + code + "','TYPE':'pocode'}");
					JSONObject jo = JSONObject.fromObject(result1);
					List<String> listscord = new ArrayList<String>();
					JSONArray js = JSONArray.fromObject(jo.getJSONArray("data"));
					setAttr("checklist", js);
		
		
        
        //优秀党员
        String result3 = HttpKit.post(common.url + "/party_member/gatPmSeRanka","{'PO_CODE':'"+code+"'}");
        JSONObject jo_dy=JSONObject.fromObject(result3);
        JSONArray arr_li=JSONArray.fromObject(jo_dy.getJSONArray("data"));
        Collections.sort(arr_li, new Comparator<Map<String,Object>>() {

			@Override
			public int compare(Map<String, Object> o1, Map<String, Object> o2) {
				Integer pank1 = Integer.valueOf(o1.get("PM_RANK").toString());
				Integer pank2 = Integer.valueOf(o2.get("PM_RANK").toString());
				return pank1.compareTo(pank2);
			}
		});
        setAttr("excellet", arr_li);
        setAttr("size", arr_li.size());
      //展示图片
        String result5 = HttpKit.post(common.url + "/common/PictureData","{'CODE':'"+code+"','TYPE':'pocode','RECOMMEND_CODE':''}");
        JSONObject jo_zz5=JSONObject.fromObject(result5);
        String data = jo_zz5.getString("data");
        JSONObject jo_zzda=JSONObject.fromObject(jo_zz5.getString("data"));
        List listsf = jo_zzda.getJSONArray("PICTURE");
        setAttr("listsf", listsf);
       
        String result6 = HttpKit.post(common.url + "/common/BrenchSank","{'CODE':'"+code+"'}");
        JSONArray data6 = JSONArray.fromObject(result6);
        setAttr("conif", data6);*/
		//组织架构
        String result4 = HttpKit.post(common.url + "/common/BrenchNum","{'PO_CODE':'"+code+"'}");
        JSONObject jo_zz=JSONObject.fromObject(result4);
        List list_zz=jo_zz.getJSONArray(code);
        setAttr("list_zz", list_zz);
        if(type.equals("613")) {
        	renderJsp("/view/shequ_party_branch2.jsp");
        }else {
        	renderJsp("/view/general_party_branch.jsp");
        }
        
		
	}

}
