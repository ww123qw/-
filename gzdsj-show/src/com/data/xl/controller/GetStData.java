package com.data.xl.controller;

import com.data.xl.config.common;
import com.jfinal.kit.HttpKit;

import net.sf.json.JSONObject;

public class GetStData implements Runnable{
public static JSONObject Party_committee;
	@Override
	public void run() {
		Party_committee=null;
		String result=HttpKit.post(common.url+"/dpData/getdata", "{'PO_CODE':'360702'}");
		JSONObject jo=JSONObject.fromObject(result);
		String data=jo.getString("data");
		 Party_committee=JSONObject.fromObject(data);
		 
		
	}

}
