q(2).

q(A,B,B) :- 
    q(A).
not_q(A,C,C) :- 
    not q(A).

false_star_1(D,E) :- 
    dual(1,false,D,E).
not_false(D,E) :- 
    (true,false_star_1(D,E)).

s_ab(F,[b(F)]).
:- table s_ab/2.
s(G,H,I) :- 
    (s_ab(G,J),produce_context(I,H,J)).
s_star_1(G,K,K) :- 
    [G] \= [F].
s_star_1(L,M,N) :- 
    dual(1,s(L),M,N).
not_s(G,M,N) :- 
    (copy_term([G],[L]),s_star_1(L,M,N)).

r_ab(O,[a(O)]).
:- table r_ab/2.
r(P,Q,R) :- 
    (r_ab(P,S),produce_context(R,Q,S)).
r_star_1(P,T,T) :- 
    [P] \= [O].
r_star_1(U,V,W) :- 
    dual(1,r(U),V,W).
not_r(P,V,W) :- 
    (copy_term([P],[U]),r_star_1(U,V,W)).

a(X,Y,Z) :- 
    insert_abducible(a(X),Y,Z).
a_star(A1,B1,C1) :- 
    insert_abducible(not a(A1),B1,C1).
b(D1,E1,F1) :- 
    insert_abducible(b(D1),E1,F1).
b_star(G1,H1,I1) :- 
    insert_abducible(not b(G1),H1,I1).
