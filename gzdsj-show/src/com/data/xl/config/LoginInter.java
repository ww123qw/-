package com.data.xl.config;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;

public class LoginInter implements Interceptor{

	@Override
	public void intercept(Invocation inv) {
		Controller con = inv.getController();
		//String org_id = con.getSessionAttr("org_id");
		String url = inv.getActionKey();
		if(inv.getActionKey().indexOf("login") !=-1) {
			inv.invoke();
		}else if(con.getSessionAttr("org_id") !=null) {
			inv.invoke();
			
		}else {
			con.forwardAction( "/login/");
		}
		
	}

}
