package com.data.xl.config;

import com.data.xl.Committee.BrenchSen;
import com.data.xl.brench.party_brench;
import com.data.xl.controller.Committee_bigdata_view;
import com.data.xl.controller.General_party_brench;
import com.data.xl.controller.Login;
import com.data.xl.controller.Party_brench;
import com.data.xl.controller.district_committee_bigdata;
import com.data.xl.controller.party_member;
import com.data.xl.distuict.Distuict;
import com.jfinal.config.Routes;
import com.xl.member.GetMember;

public class Routinfo extends Routes{

	@Override
	public void config() {
		
		this.add("/login",Login.class);
		
		this.add("/committee_bigdata",Committee_bigdata_view.class);
		this.add("/party_member_data",party_member.class);
		this.add("/district_committee_bigdata",district_committee_bigdata.class);
		this.add("/Party_brench",Party_brench.class);
		this.add("/General_party_brench",General_party_brench.class);
		this.add("/brench",BrenchSen.class);
		this.add("/party_br",party_brench.class);
		this.add("/distuict",Distuict.class);
		this.add("/member",GetMember.class);
	}

}
