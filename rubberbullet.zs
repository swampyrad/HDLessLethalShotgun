class HDB_00Rubber:HDBulletActor{
	default{
		pushfactor 0.01;
		mass 50;
		speed HDCONST_MPSTODUPT*300;
		accuracy 1;
		stamina 1;
		woundhealth 0;
		hdbulletactor.hardness 10;
	}
	 double penetration(){
		double pen=0
		;

		double pendenom=1;

		if(pushfactor>0){
			double pushed=1.+pushfactor;
			pendenom*=pushed*pushed;
		}
		if(pendenom)pen/=pendenom;

		if(hd_debug>1)console.printf(getclassname().." penetration:  "..pen.."   "..realpos.x..","..realpos.y);
		return pen;
	}
}