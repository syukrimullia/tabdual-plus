p_ab([a4]).
p_ab([a3,a4]).
p_ab([a3]).
p_ab([a2,a4]).
p_ab([a2,a3,a4]).
p_ab([a2,a3]).
p_ab([a2]).
p_ab([a1,a4]).
p_ab([a1,a3,a4]).
p_ab([a1,a3]).
p_ab([a1,a2,a4]).
p_ab([a1,a2,a3,a4]).
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
p_star_8(S,S) :- 
    false.
p_star_8(R,T) :- 
    dual(8,p,R,T).
p_star_9(U,U) :- 
    false.
p_star_9(T,V) :- 
    dual(9,p,T,V).
p_star_10(W,W) :- 
    false.
p_star_10(V,X) :- 
    dual(10,p,V,X).
p_star_11(Y,Y) :- 
    false.
p_star_11(X,Z) :- 
    dual(11,p,X,Z).
p_star_12(A1,A1) :- 
    false.
p_star_12(Z,B1) :- 
    dual(12,p,Z,B1).
p_star_13(C1,C1) :- 
    false.
p_star_13(B1,D1) :- 
    dual(13,p,B1,D1).
p_star_14(E1,E1) :- 
    false.
p_star_14(D1,F1) :- 
    dual(14,p,D1,F1).
p_star_15(G1,G1) :- 
    false.
p_star_15(F1,H1) :- 
    dual(15,p,F1,H1).
not_p(E,H1) :- 
    (true,p_star_1(E,F),true,p_star_2(F,H),true,p_star_3(H,J),true,p_star_4(J,L),true,p_star_5(L,N),true,p_star_6(N,P),true,p_star_7(P,R),true,p_star_8(R,T),true,p_star_9(T,V),true,p_star_10(V,X),true,p_star_11(X,Z),true,p_star_12(Z,B1),true,p_star_13(B1,D1),true,p_star_14(D1,F1),true,p_star_15(F1,H1)).

q4_ab(I1) :- 
    (q3([],J1),p(J1,I1)).
:- table q4_ab/1.
q4(K1,L1) :- 
    (q4_ab(M1),produce_context(L1,K1,M1)).
q4_star_1(N1,N1) :- 
    false.
q4_star_1(O1,P1) :- 
    dual(1,q4,O1,P1).
not_q4(O1,P1) :- 
    (true,q4_star_1(O1,P1)).

q3_ab(Q1) :- 
    (q2([],R1),p(R1,Q1)).
:- table q3_ab/1.
q3(S1,T1) :- 
    (q3_ab(U1),produce_context(T1,S1,U1)).
q3_star_1(V1,V1) :- 
    false.
q3_star_1(W1,X1) :- 
    dual(1,q3,W1,X1).
not_q3(W1,X1) :- 
    (true,q3_star_1(W1,X1)).

q2_ab(Y1) :- 
    (q1([],Z1),p(Z1,Y1)).
:- table q2_ab/1.
q2(A2,B2) :- 
    (q2_ab(C2),produce_context(B2,A2,C2)).
q2_star_1(D2,D2) :- 
    false.
q2_star_1(E2,F2) :- 
    dual(1,q2,E2,F2).
not_q2(E2,F2) :- 
    (true,q2_star_1(E2,F2)).

q1_ab(G2) :- 
    p([],G2).
:- table q1_ab/1.
q1(H2,I2) :- 
    (q1_ab(J2),produce_context(I2,H2,J2)).
q1_star_1(K2,K2) :- 
    false.
q1_star_1(L2,M2) :- 
    dual(1,q1,L2,M2).
not_q1(L2,M2) :- 
    (true,q1_star_1(L2,M2)).

not_false(N2,N2).

a1(O2,P2) :- 
    insert_abducible(a1,O2,P2).
a1_star(Q2,R2) :- 
    insert_abducible(not a1,Q2,R2).
a2(S2,T2) :- 
    insert_abducible(a2,S2,T2).
a2_star(U2,V2) :- 
    insert_abducible(not a2,U2,V2).
a3(W2,X2) :- 
    insert_abducible(a3,W2,X2).
a3_star(Y2,Z2) :- 
    insert_abducible(not a3,Y2,Z2).
a4(A3,B3) :- 
    insert_abducible(a4,A3,B3).
a4_star(C3,D3) :- 
    insert_abducible(not a4,C3,D3).
