package text;

import com.jfinal.kit.HttpKit;

public class text {

	
	
	public void te() 
	{
		String[] yy;
		
	}
	public static void main(String[] args) {
		//党委下支部排名
		/*String url = "http://192.168.8.83:8080/testgzbig_show/brench/brenchSan";
		String result = HttpKit.post(url, "{'CODE':'360702001','member_id':'2ac210e74bf0b90df1ed460c5541','year':'2018','org_id':'72bd172746749e193eb4408fbf68'}");
		System.out.println(result);*/

		
		//党委的总体考核
		/*String url = "http://192.168.8.83:8080/testgzbig_show/brench/getPmOvera";
		String result = HttpKit.post(url, "{'PO_CODE':'360702001','member_id':'2ac210e74bf0b90df1ed460c5541','year':'2018','org_id':'72bd172746749e193eb4408fbf68'}");
		System.out.println(result);*/
		
		/*//组织生活正产情况
		String url = "http://192.168.8.83:8080/testgzbig_show/party_br/brenchData";
		String result = HttpKit.post(url, "{'PO_CODE':'3607020010209'}");
		System.out.println(result);*/
		
		//组织考核总体情况
				String url = "http://192.168.8.83:8080/ibopo-db/org/rollOutOrg";
				String result = HttpKit.post(url, "{'domain':'rjdj','porg_id':'40e088bc45209010ab39b075869e','org_id':'2ad48c6c45c689698dc523ce3bca'}");
				System.out.println(result);
		
		
		/*//组织正常情况
		String url = "http://192.168.8.83:8080/testgzbig_show/brench/orgLifeStatus";
		String result = HttpKit.post(url, "{'PO_CODE':'360702001'}");
		System.out.println(result);*/
		//市级页面
				/*String url = "http://192.168.8.83:8080/testgzbig_show/brench/orgLifeStatus";
				String result = HttpKit.post(url, "{'PO_CODE':'360702001'}");
				System.out.println(result);*/
		
		//学习情况
/*		String url = "http://192.168.8.83:8080/testgzbig_show/member/pmLearning";
		String result = HttpKit.post(url, "{'PM_CODE':'36070201400230001'}");
		System.out.println(result);*/
		/*String[] yy=new String[3];	
		for(int i=0;i<yy.length;i++) {
			yy[i]="1";
		}
		yy=new String[3];
		for(int i=0;i<yy.length;i++) {
			yy[i]="1";
		}
		for(int i=0;i<yy.length;i++) {
			System.out.println(yy[i]);
		}*/
	}

}
