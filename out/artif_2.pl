p_ab([a2]).
p_ab([a1,a2]).
p_ab([a1]).
:- table p_ab/1.
p(A,B) :- 
    (p_ab(C),produce_context(B,A,C)).
p_star_1(D,D) :- 
    false.
p_star_1(E,F) :- 
    dual(1,p,E,F).
p_star_2(G,G) :- 
    false.
p_star_2(F,H) :- 
    dual(2,p,F,H).
p_star_3(I,I) :- 
    false.
p_star_3(H,J) :- 
    dual(3,p,H,J).
not_p(E,J) :- 
    (true,p_star_1(E,F),true,p_star_2(F,H),true,p_star_3(H,J)).

q2_ab(K) :- 
    (q1([],L),p(L,K)).
:- table q2_ab/1.
q2(M,N) :- 
    (q2_ab(O),produce_context(N,M,O)).
q2_star_1(P,P) :- 
    false.
q2_star_1(Q,R) :- 
    dual(1,q2,Q,R).
not_q2(Q,R) :- 
    (true,q2_star_1(Q,R)).

q1_ab(S) :- 
    p([],S).
:- table q1_ab/1.
q1(T,U) :- 
    (q1_ab(V),produce_context(U,T,V)).
q1_star_1(W,W) :- 
    false.
q1_star_1(X,Y) :- 
    dual(1,q1,X,Y).
not_q1(X,Y) :- 
    (true,q1_star_1(X,Y)).

not_false(Z,Z).

a1(A1,B1) :- 
    insert_abducible(a1,A1,B1).
a1_star(C1,D1) :- 
    insert_abducible(not a1,C1,D1).
a2(E1,F1) :- 
    insert_abducible(a2,E1,F1).
a2_star(G1,H1) :- 
    insert_abducible(not a2,G1,H1).
