p_ab([a1]).
:- table p_ab/1.
p(A,B) :- 
    (p_ab(C),produce_context(B,A,C)).
p_star_1(D,D) :- 
    false.
p_star_1(E,F) :- 
    dual(1,p,E,F).
not_p(E,F) :- 
    (true,p_star_1(E,F)).

q1_ab(G) :- 
    p([],G).
:- table q1_ab/1.
q1(H,I) :- 
    (q1_ab(J),produce_context(I,H,J)).
q1_star_1(K,K) :- 
    false.
q1_star_1(L,M) :- 
    dual(1,q1,L,M).
not_q1(L,M) :- 
    (true,q1_star_1(L,M)).

not_false(N,N).

a1(O,P) :- 
    insert_abducible(a1,O,P).
a1_star(Q,R) :- 
    insert_abducible(not a1,Q,R).
