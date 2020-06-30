package com.data.xl.controller;


import java.text.SimpleDateFormat;
import java.util.Date;

import com.jfinal.core.Controller;


public class district_committee_bigdata extends Controller{
	
	public void index() {
//		String code="360702";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		Date date = new Date();
		String today = sdf.format(date);
		int mont=Integer.valueOf(today.substring(5,7));
		setAttr("time", today);
		setAttr("mont", mont);
		GetStData getStData=new GetStData();
		Thread t3=new Thread(getStData);
		t3.start();
		while(t3.isAlive()) {}
		setAttr("Party_committee",GetStData.Party_committee);
		/*Date date=new Date();
		SimpleDateFormat form=new SimpleDateFormat("YYYY-MM");
		String formyear=form.format(date);
		String year=formyear.substring(0, 4);
		int month = Integer.parseInt(formyear.substring(5, 7));
		long time=System.currentTimeMillis();
		GetPieChart_sex age=new GetPieChart_sex();
		GetPieChart_age sex1=new GetPieChart_age();
		GetPieChart_education education=new GetPieChart_education();
		GetPieChart_ethnic ethnic=new GetPieChart_ethnic();
		GetPieChart_career career=new GetPieChart_career();
		
		GetPmOvera getoverp=new GetPmOvera();
		GetPmOverallTest getotext=new GetPmOverallTest("360702");
		GetOverallTestTrend GetOverall=new GetOverallTestTrend();
		GetPoStatistics getPoStatistics=new GetPoStatistics();
		Panks Panks=new Panks();
		Thread t=new Thread(age);
		Thread t10=new Thread(getPoStatistics);
		Thread t1=new Thread(ethnic);
		Thread t2=new Thread(sex1);
	
		Thread t4=new Thread(education);
		Thread t5=new Thread(career);
		Thread t6=new Thread(Panks);
		Thread t7=new Thread(getoverp);
		Thread t8=new Thread(getotext);
		Thread t9=new Thread(GetOverall);
		
		t.start();
		t1.start();
		t2.start();
		t4.start();
		t5.start();
		t6.start();
		t7.start();
		t8.start();
		t9.start();
		t10.start();
		
		while(t.isAlive())  {}
		while(t1.isAlive()) {}
		while(t2.isAlive()) {}
		while(t4.isAlive()) {}
		while(t5.isAlive()) {}
		while(t6.isAlive()) {}
		while(t7.isAlive()) {}
		while(t8.isAlive()) {}
		while(t9.isAlive()) {}
		while(t10.isAlive()) {}
		System.out.println(System.currentTimeMillis()-time);
	
	setAttr("age", GetPieChart_age.age1);
	setAttr("sex", GetPieChart_sex.sex);
	setAttr("education", GetPieChart_education.education);
	setAttr("career", GetPieChart_career.career);
	setAttr("ethnic", GetPieChart_ethnic.ethnic);
	setAttr("comm_list", Panks.comm_list);
	setAttr("comm_po_lif", GetPmOvera.po_overa);
	setAttr("check_detail", GetPmOverallTest.overdata);
	setAttr("year", year);
	setAttr("month", month-1);
	setAttr("list", GetOverallTestTrend.list_OverallTestTrend);
	setAttr("chiar", GetPoStatistics.stapo);*/
		renderJsp("/view/district_committee2.jsp");
	}

	
	
}
