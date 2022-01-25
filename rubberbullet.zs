class HDB_00Rubber:HDBulletActor{
	default{
		pushfactor 0.5;
		mass 1;
		speed HDCONST_MPSTODUPT*250;
		accuracy 0;
		stamina 0;
		woundhealth 0;
		hdbulletactor.hardness 5;
	}
	 double penetration(){
		double pen=0
		;

		double pendenom=200+stamina;

		if(pushfactor>0){
			double pushed=1.+pushfactor;
			pendenom*=pushed*pushed;
		}
		if(pendenom)pen/=pendenom;

		if(hd_debug>1)console.printf(getclassname().." penetration:  "..pen.."   "..realpos.x..","..realpos.y);
		return pen;
	}
}