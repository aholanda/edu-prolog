menor(beto,marcos). /* beto é menor que marcos */
menor(marcos,joão).  /* marcos é menor que joão */
menor(joão,jorge).  /* joão é menor que jorge */

é_menor(X,Y) :- menor(X,Y).
é_menor(X,Y) :- menor(X,Z),é_menor(Z,Y).
		     
