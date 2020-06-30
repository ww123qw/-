package com.data.xl.Committee;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.data.xl.config.common;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;
import com.jfinal.kit.JsonKit;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class BrenchSen extends Controller{
	
	
	
			public void brenchSan() {
				
				String code = getPara("code");
				String type = getPara("type");
		//		String param = HttpKit.readData(getRequest());
		//		JSONObject jo = JSONObject.fromObject(param);
		//		String code = jo.getString("CODE");
				String result = HttpKit.post(common.url + "/common/BrenchRanlist", "{'CODE':'" + code + "'}");
				
				renderJson(result);
				
				
			}
	/**
	 * 
	 * 
	 * 党委的总体考核情况
	 * 
	 */
	
			public void getPmOvera() {
					
					String code = getPara("code");
					String type = getPara("type");
					/*String param = HttpKit.readData(getRequest());
					JSONObject jo = JSONObject.fromObject(param);
					String code = jo.getString("PO_CODE");*/
					String result = HttpKit.post(common.url + "/common/getPmOvera", "{'PO_CODE':'" + code + "'}");
					
					renderJson(result);
					
					
				}

/**
 * 
 * 党委的支部、党员生活、党员数
 * 
 */
			public void NineGetData() {
				
				String code = getPara("code");
				String type = getPara("type");
				/*String param = HttpKit.readData(getRequest());
				JSONObject jo = JSONObject.fromObject(param);
				String code = jo.getString("PO_CODE");*/
				String result = HttpKit.post(common.url + "/party_committee/NineGetData", "{'PO_CODE':'" + code + "'}");
				
				renderJson(result);
				
				
			}
			
			/**
			 * 
			 * 
			 * 在线学习
			 * 
			 */
			
public void onLearing() {
				
				String code = getPara("code");
				String type = getPara("type");
				/*String param = HttpKit.readData(getRequest());
				JSONObject jo = JSONObject.fromObject(param);
				String code = jo.getString("PO_CODE");*/
				String result = HttpKit.post(common.url + "/common/penLearning", "{'PO_CODE':'" + code + "'}");
				
				renderJson(result);
				
				
			}


/**
 * 
 * 组织正常情况
 * 
 */

public void orgLifeStatus() {
	String code = getPara("code");
//	String param = HttpKit.readData(getRequest());
//	JSONObject jo = JSONObject.fromObject(param);
//	String code = jo.getString("PO_CODE");
	String result1 = HttpKit.post(common.url + "/common/orgLifeStatus","{'PO_CODE':'" + code + "'}");
	renderJson(result1);
	
	
}

/**
 * 
 * 
 * 组织架构
 */

public void BrenchNum() {
	String code = getPara("code");
	 //组织架构
    String result4 = HttpKit.post(common.url + "/common/BrenchNum","{'PO_CODE':'"+code+"'}");
    JSONObject jo_zz=JSONObject.fromObject(result4);
    List list_zz=jo_zz.getJSONArray(code);
    //setAttr("list_zz", list_zz);
//     setAttr("excellet", arr_li);
//     setAttr("size", arr_li.size());
     renderJson(result4);
     
	
	
	
	
          }

/**
 * 
 * 
 * 党委考核趋势
 */

public void getOverallTestTrend() {
	String code = getPara("code");
	String type = getPara("type");
	 //组织架构
    String result4 = HttpKit.post(common.url + "/common/getOverallTestTrend","{'CODE':'"+code+"','TYPE':'"+type+"'}");
    
     renderJson(result4);
     
	
	
	
	
          }


/**
 * 
 * 
 * 党委考核趋势
 */

public void Loginmember() {
	String code = getPara("code");
	 //组织架构
    String result4 = HttpKit.post(common.url + "/common/Loginmember","{'PO_CODE':'"+code+"','TYPE':'month'}");
    
     renderJson(result4);
     
	
	
	
	
          }
/**
 * 
 * 
 * 党委排名
 */

public void poSnRank() {
	String code = getPara("code");
	 //党委排名 
	Map<String,Object> map = new HashMap<>();
	String result2 = HttpKit.post(common.url + "/party_committee/gatPoSeRanka","{'PO_CODE':'360702'}");
    JSONObject jodw=JSONObject.fromObject(result2);
    JSONArray ara=JSONArray.fromObject(jodw.getJSONArray("data"));
    Iterator<Map<String,Object>> dwlist=ara.iterator();
    while(dwlist.hasNext()) {
    	Map<String,Object> li_dw=dwlist.next();
    	JSONObject jo_m=JSONObject.fromObject(li_dw);
    	String code_dw=jo_m.getString("PO_CODE");
    	if(code_dw.equals(code)) {
    		String pank=jo_m.getString("PO_RANK");
    		String name=jo_m.getString("PO_NAME"); 
    		map.put("pank", pank);
    		map.put("name", name);
    	}
    	
    }
     renderJson(JsonKit.toJson(map));
     
	
	
	
	
          }
/**
 * 
 * 
 * 党委支部正常情况
 */

public void orgLifeStatusList() {
	String code = getPara("code");
	 //组织架构
   String result4 = HttpKit.post(common.url + "/party_committee/orgLifeStatusList","{'PO_CODE':'"+code+"','TYPE':'month'}");
   
    renderJson(result4);
    
	
	
	
	
          }
/**
 * 
 * 
 * 总支排名
 */

public void BrenchSank() {
	String code = getPara("code");
	 //组织架构
   String result4 = HttpKit.post(common.url + "/common/BrenchSank","{'CODE':'"+code+"'}");
   
    renderJson(result4);
    
	
	
	
	
          }

/**
 * 
 * 
 * 展示图片
 */

public void pictureData() {
	String code = getPara("code");
	 //组织架构
   String result4 = HttpKit.post(common.url + "/common/PictureData","{'CODE':'"+code+"','TYPE':'pocode','RECOMMEND_CODE':''}");
   
    renderJson(result4);
    
	
	
	
	
          }
}
