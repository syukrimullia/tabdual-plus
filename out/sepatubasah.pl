sepatu_basah_ab(A) :- 
    rumput_basah([tadi_malam_hujan],A).
:- table sepatu_basah_ab/1.
sepatu_basah(B,C) :- 
    (sepatu_basah_ab(D),produce_context(C,B,D)).
sepatu_basah_star_1(E,E) :- 
    false.
sepatu_basah_star_1(F,G) :- 
    dual(1,sepatu_basah,F,G).
not_sepatu_basah(F,G) :- 
    (true,sepatu_basah_star_1(F,G)).

rumput_basah_ab([tadi_malam_hujan]).
rumput_basah_ab([penyiram_rumput_menyala]).
:- table rumput_basah_ab/1.
rumput_basah(H,I) :- 
    (rumput_basah_ab(J),produce_context(I,H,J)).
rumput_basah_star_1(K,K) :- 
    false.
rumput_basah_star_1(L,M) :- 
    dual(1,rumput_basah,L,M).
rumput_basah_star_2(N,N) :- 
    false.
rumput_basah_star_2(M,O) :- 
    dual(2,rumput_basah,M,O).
not_rumput_basah(L,O) :- 
    (true,rumput_basah_star_1(L,M),true,rumput_basah_star_2(M,O)).

not_false(P,P).

tadi_malam_hujan(Q,R) :- 
    insert_abducible(tadi_malam_hujan,Q,R).
tadi_malam_hujan_star(S,T) :- 
    insert_abducible(not tadi_malam_hujan,S,T).
penyiram_rumput_menyala(U,V) :- 
    insert_abducible(penyiram_rumput_menyala,U,V).
penyiram_rumput_menyala_star(W,X) :- 
    insert_abducible(not penyiram_rumput_menyala,W,X).
