rumput_basah_ab([penyiram_rumput_menyala]).
rumput_basah_ab([tadi_malam_hujan]).
:- table rumput_basah_ab/1.
rumput_basah(A,B) :- 
    (rumput_basah_ab(C),produce_context(B,A,C)).
rumput_basah_star_1(D,E) :- 
    dual(1,rumput_basah,D,E).
rumput_basah_star_2(E,F) :- 
    dual(2,rumput_basah,E,F).
not_rumput_basah(D,F) :- 
    (true,rumput_basah_star_1(D,E),true,rumput_basah_star_2(E,F)).

sepatu_basah_ab(G) :- 
    rumput_basah([tadi_malam_hujan],G).
:- table sepatu_basah_ab/1.
sepatu_basah(H,I) :- 
    (sepatu_basah_ab(J),produce_context(I,H,J)).
sepatu_basah_star_1(K,L) :- 
    dual(1,sepatu_basah,K,L).
not_sepatu_basah(K,L) :- 
    (true,sepatu_basah_star_1(K,L)).

not_false(M,M).

tadi_malam_hujan(N,O) :- 
    insert_abducible(tadi_malam_hujan,N,O).
tadi_malam_hujan_star(P,Q) :- 
    insert_abducible(not tadi_malam_hujan,P,Q).
penyiram_rumput_menyala(R,S) :- 
    insert_abducible(penyiram_rumput_menyala,R,S).
penyiram_rumput_menyala_star(T,U) :- 
    insert_abducible(not penyiram_rumput_menyala,T,U).
