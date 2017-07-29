mengantuk_ab([kurang_tidur]).
:- table mengantuk_ab/1.
mengantuk(A,B) :- 
    (mengantuk_ab(C),produce_context(B,A,C)).
mengantuk_star_1(D,E) :- 
    dual(1,mengantuk,D,E).
not_mengantuk(D,E) :- 
    (true,mengantuk_star_1(D,E)).

tidak_fokus_ab(F) :- 
    mengantuk([lapar],F).
:- table tidak_fokus_ab/1.
tidak_fokus(G,H) :- 
    (tidak_fokus_ab(I),produce_context(H,G,I)).
tidak_fokus_star_1(J,K) :- 
    dual(1,tidak_fokus,J,K).
not_tidak_fokus(J,K) :- 
    (true,tidak_fokus_star_1(J,K)).

tidur_di_kelas_ab(L) :- 
    (tidak_fokus([],M),mengantuk(M,L)).
:- table tidur_di_kelas_ab/1.
tidur_di_kelas(N,O) :- 
    (tidur_di_kelas_ab(P),produce_context(O,N,P)).
tidur_di_kelas_star_1(Q,R) :- 
    dual(1,tidur_di_kelas,Q,R).
not_tidur_di_kelas(Q,R) :- 
    (true,tidur_di_kelas_star_1(Q,R)).

not_false(S,S).

kurang_tidur(T,U) :- 
    insert_abducible(kurang_tidur,T,U).
kurang_tidur_star(V,W) :- 
    insert_abducible(not kurang_tidur,V,W).
lapar(X,Y) :- 
    insert_abducible(lapar,X,Y).
lapar_star(Z,A1) :- 
    insert_abducible(not lapar,Z,A1).
