q(1).
q(2).

q(A,B,B) :- 
    q(A).
not_q(A,C,C) :- 
    not q(A).

r_ab(D,[b(D)]).
r_ab(E,[not a(E)]).
:- table r_ab/2.
r(F,G,H) :- 
    (r_ab(F,I),produce_context(H,G,I)).
r_star_1(F,J,J) :- 
    [F] \= [D].
r_star_1(K,L,M) :- 
    dual(1,r(K),L,M).
r_star_2(F,N,N) :- 
    [F] \= [E].
r_star_2(O,M,P) :- 
    dual(2,r(O),M,P).
not_r(F,L,P) :- 
    (copy_term([F],[K]),r_star_1(K,L,M),copy_term([F],[O]),r_star_2(O,M,P)).

false_star_1(Q,R) :- 
    dual(1,false,Q,R).
not_false(Q,R) :- 
    (true,false_star_1(Q,R)).

a(S,T,U) :- 
    insert_abducible(a(S),T,U).
a_star(V,W,X) :- 
    insert_abducible(not a(V),W,X).
b(Y,Z,A1) :- 
    insert_abducible(b(Y),Z,A1).
b_star(B1,C1,D1) :- 
    insert_abducible(not b(B1),C1,D1).
