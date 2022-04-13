pai(paulo,pedro).  /* pedro é pai de paulo */
pai(pedro,rui).    /* rui é pai de pedro */
pai(rui,nelson).    /* nelson é pai de rui */

ancestral(X,Y):- pai(X,Y).   /* alguem é seu ancestral se é seu pai */
ancestral(X,Y):- pai(X,Z), /* ou alguem é seu ancestral se existe um pai */
		 ancestral(Z,Y). /* de alguem que é seu ancestral */
