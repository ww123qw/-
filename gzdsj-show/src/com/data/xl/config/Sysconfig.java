package com.data.xl.config;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;

public class Sysconfig extends JFinalConfig{

	@Override
	public void configConstant(Constants me) {
		me.setDevMode(true);
		me.setViewType(ViewType.JSP);
	}

	@Override
	public void configEngine(Engine me) {
		
		
	}

	@Override
	public void configHandler(Handlers me) {
		
		
	}

	@Override
	public void configInterceptor(Interceptors me) {
		
		me.add(new LoginInter());
	}

	@Override
	public void configPlugin(Plugins me) {
		
		
	}

	@Override
	public void configRoute(Routes me) {
		me.add(new Routinfo());
		
	}

}
