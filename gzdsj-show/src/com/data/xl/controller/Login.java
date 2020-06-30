package com.data.xl.controller;



import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.xml.ws.Action;

import com.data.xl.config.common;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;
import com.jfinal.kit.JsonKit;
import com.jfinal.kit.PropKit;

import jdk.nashorn.internal.parser.JSONParser;
import net.sf.json.JSON;
import net.sf.json.JSONObject;
import util.Encrypt;

public class Login extends Controller{
	

	public void index() {
		
		renderJsp("/view/login.jsp");
	}

	public void LoginGetdata() {
		Map<String,Object> map = new HashMap<>();
		try {
//			String url=PropKit.use("url.properties").get("url");
			String usename = getPara("username");
			setSessionAttr("username", usename);
			String password = Encrypt.doStrByMD5(getPara("password"));
			System.out.println(common.url);
			String result = HttpKit.post(common.url + "/common/penLogin",
					"{'PO_CODE':'" + usename + "','PASSWORD':'" + password + "'}");
//			System.out.println(result);
			JSONObject jo = JSONObject.fromObject(result);
			String code = jo.getString("code");
			String data = jo.getString("data");
            setAttr("code", code);
            map.put("data", result);
			/*if (code.equals("0")) {
				JSONObject jo1 = JSONObject.fromObject(data);
				setSessionAttr("code", 0);
				setSessionAttr("PO_NAME", jo1.getString("PO_NAME"));
				renderJsp("/view/choose_committee.jsp");
			} else {
				setAttr("username", usename);
				setAttr("erro", "密码或账号错误");
				setAttr("code", -1);

				renderJsp("/view/login.jsp");
			}*/
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("nihao");
		}
renderJson(JsonKit.toJson(map));
	}

	public void layout() {
		removeSessionAttr("username");
		renderJsp("/view/login.jsp");
	}

	public void Return() {

		renderJsp("/view/choose.jsp");
	}
}
