mengantuk_ab([kurang_tidur]).
:- table mengantuk_ab/1.
mengantuk(A,B) :- 
    (mengantuk_ab(C),produce_context(B,A,C)).
mengantuk_star_1(D,D) :- 
    false.
mengantuk_star_1(E,F) :- 
    dual(1,mengantuk,E,F).
not_mengantuk(E,F) :- 
    (true,mengantuk_star_1(E,F)).

tidak_fokus_ab(G) :- 
    mengantuk([lapar],G).
:- table tidak_fokus_ab/1.
tidak_fokus(H,I) :- 
    (tidak_fokus_ab(J),produce_context(I,H,J)).
tidak_fokus_star_1(K,K) :- 
    false.
tidak_fokus_star_1(L,M) :- 
    dual(1,tidak_fokus,L,M).
not_tidak_fokus(L,M) :- 
    (true,tidak_fokus_star_1(L,M)).

tidur_di_kelas_ab(N) :- 
    (tidak_fokus([],O),mengantuk(O,N)).
:- table tidur_di_kelas_ab/1.
tidur_di_kelas(P,Q) :- 
    (tidur_di_kelas_ab(R),produce_context(Q,P,R)).
tidur_di_kelas_star_1(S,S) :- 
    false.
tidur_di_kelas_star_1(T,U) :- 
    dual(1,tidur_di_kelas,T,U).
not_tidur_di_kelas(T,U) :- 
    (true,tidur_di_kelas_star_1(T,U)).

minum_kopi_ab([]).
:- table minum_kopi_ab/1.
minum_kopi(V,W) :- 
    (minum_kopi_ab(X),produce_context(W,V,X)).
minum_kopi_star_1(Y,Y) :- 
    false.
not_minum_kopi(Z,A1) :- 
    (true,minum_kopi_star_1(Z,A1)).

false_star_1(B1,B1) :- 
    false.
false_star_1(C1,D1) :- 
    dual(1,false,C1,D1).
not_false(C1,D1) :- 
    (true,false_star_1(C1,D1)).

kurang_tidur(E1,F1) :- 
    insert_abducible(kurang_tidur,E1,F1).
kurang_tidur_star(G1,H1) :- 
    insert_abducible(not kurang_tidur,G1,H1).
lapar(I1,J1) :- 
    insert_abducible(lapar,I1,J1).
lapar_star(K1,L1) :- 
    insert_abducible(not lapar,K1,L1).
