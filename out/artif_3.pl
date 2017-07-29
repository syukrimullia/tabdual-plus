p_ab([a3]).
p_ab([a2,a3]).
p_ab([a2]).
p_ab([a1,a3]).
p_ab([a1,a2,a3]).
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
p_star_4(K,K) :- 
    false.
p_star_4(J,L) :- 
    dual(4,p,J,L).
p_star_5(M,M) :- 
    false.
p_star_5(L,N) :- 
    dual(5,p,L,N).
p_star_6(O,O) :- 
    false.
p_star_6(N,P) :- 
    dual(6,p,N,P).
p_star_7(Q,Q) :- 
    false.
p_star_7(P,R) :- 
    dual(7,p,P,R).
not_p(E,R) :- 
    (true,p_star_1(E,F),true,p_star_2(F,H),true,p_star_3(H,J),true,p_star_4(J,L),true,p_star_5(L,N),true,p_star_6(N,P),true,p_star_7(P,R)).

q3_ab(S) :- 
    (q2([],T),p(T,S)).
:- table q3_ab/1.
q3(U,V) :- 
    (q3_ab(W),produce_context(V,U,W)).
q3_star_1(X,X) :- 
    false.
q3_star_1(Y,Z) :- 
    dual(1,q3,Y,Z).
not_q3(Y,Z) :- 
    (true,q3_star_1(Y,Z)).

q2_ab(A1) :- 
    (q1([],B1),p(B1,A1)).
:- table q2_ab/1.
q2(C1,D1) :- 
    (q2_ab(E1),produce_context(D1,C1,E1)).
q2_star_1(F1,F1) :- 
    false.
q2_star_1(G1,H1) :- 
    dual(1,q2,G1,H1).
not_q2(G1,H1) :- 
    (true,q2_star_1(G1,H1)).

q1_ab(I1) :- 
    p([],I1).
:- table q1_ab/1.
q1(J1,K1) :- 
    (q1_ab(L1),produce_context(K1,J1,L1)).
q1_star_1(M1,M1) :- 
    false.
q1_star_1(N1,O1) :- 
    dual(1,q1,N1,O1).
not_q1(N1,O1) :- 
    (true,q1_star_1(N1,O1)).

not_false(P1,P1).

a1(Q1,R1) :- 
    insert_abducible(a1,Q1,R1).
a1_star(S1,T1) :- 
    insert_abducible(not a1,S1,T1).
a2(U1,V1) :- 
    insert_abducible(a2,U1,V1).
a2_star(W1,X1) :- 
    insert_abducible(not a2,W1,X1).
a3(Y1,Z1) :- 
    insert_abducible(a3,Y1,Z1).
a3_star(A2,B2) :- 
    insert_abducible(not a3,A2,B2).
