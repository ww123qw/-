package com.data.xl.config;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.jfinal.kit.PropKit;

public class common {
	
//	public static String url="https://gzzhdw.71zhihui.com/gzbigdata-api";
	public static String url=PropKit.use("url.properties").get("url");
//	public static String url="http://172.219.9.155:8090/gzbigdata-api";
	
}
