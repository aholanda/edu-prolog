/* 
   animal.pro
   jogo de identificação de animal
   fonte: https://www.cpp.edu/~jrfisher/www/prolog_tutorial/2_17.html

    comece com  ?- go. 
*/

go :- hipótese(Animal),
      write('O animal é '),
      write(Animal),
      nl,
      desfazer.

/* hipótese a ser testada */
hipótese(chita)    :- chita, !.
hipótese(tigre)    :- tigre, !.
hipótese(girafa)   :- girafa, !.
hipótese(zebra)    :- zebra, !.
hipótese(avestruz) :- avestruz, !.
hipótese(pinguim)  :- pinguim, !.
hipótese(pomba)    :- pomba, !.
hipótese(desconhecido).        % hipótese desconhecida

% regras de identificação do animal 
chita    :- mamífero, 
	    carnívoro, 
	    verificar(tem_cor_bege),
	    verificar(tem_pintas_pretas).

tigre    :- mamífero,  
            carnívoro,
            verificar(tem_cor_bege), 
            verificar(tem_listas_pretas).

girafa   :- tem_casco, 
            verificar(tem_pescoço_longo), 
            verificar(tem_pernas_longas).

zebra    :- tem_casco,  
            verificar(tem_listras_pretas).

avestruz :- pássaro,  
	    verificar(não_voa), 
	    verificar(tem_pescoço_longo).

pinguim  :- pássaro, 
	    verificar(não_voa), 
	    verificar(nada),
	    verificar(é_preto_e_branco).

pomba    :- pássaro,
	    verificar(fica_em_parapeito_de_prédios),
	    verificar(voa_bem).

/* regras de classificação */
mamífero     :- verificar(tem_pelos), !.
mamífero     :- verificar(toma_leite).

pássaro      :- verificar(tem_penas), !.
pássaro      :- verificar(voa), 
		verificar(bota_ovos).

carnívoro    :- verificar(come_carne), !.
carnívoro    :- verificar(tem_dentes_afiados), 
		verificar(tem_garras),
		verificar(tem_olhos_esbugalhados).

tem_casco    :- mamífero, 
		verificar(tem_cascos), !.
tem_casco    :- mamífero, 
		verificar(rumina).

/* como perguntar */
perguntar(Pergunta) :-
    write('O animal tem o seguinte atributo (sim/não)? '),
    write(Pergunta),
    write('? '),
    read(Resposta),
    nl,
    ( (Resposta == sim ; Resposta == s)
     ->
	 assert(yes(Pergunta)) ;
      assert(no(Pergunta)), fail).

:- dynamic sim/1,não/1.

/* Como verificar algo */
verificar(R) :-
    (sim(R) 
     ->
	 true ;
     (não(R)
      ->
	  fail ;
      perguntar(R))).

/* refaz todas asserções sim/não */
desfazer :- retract(sim(_)),fail. 
desfazer :- retract(não(_)),fail.
desfazer.
