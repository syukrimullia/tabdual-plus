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

false_star_1(V,V) :- 
    false.
false_star_1(W,X) :- 
    dual(1,false,W,X).
not_false(W,X) :- 
    (true,false_star_1(W,X)).

kurang_tidur(Y,Z) :- 
    insert_abducible(kurang_tidur,Y,Z).
kurang_tidur_star(A1,B1) :- 
    insert_abducible(not kurang_tidur,A1,B1).
lapar(C1,D1) :- 
    insert_abducible(lapar,C1,D1).
lapar_star(E1,F1) :- 
    insert_abducible(not lapar,E1,F1).
minum_kopi(G1,H1) :- 
    insert_abducible(minum_kopi,G1,H1).
minum_kopi_star(I1,J1) :- 
    insert_abducible(not minum_kopi,I1,J1).
