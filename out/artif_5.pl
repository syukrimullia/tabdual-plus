p_ab([a5]).
p_ab([a4,a5]).
p_ab([a4]).
p_ab([a3,a5]).
p_ab([a3,a4,a5]).
p_ab([a3,a4]).
p_ab([a3]).
p_ab([a2,a5]).
p_ab([a2,a4,a5]).
p_ab([a2,a4]).
p_ab([a2,a3,a5]).
p_ab([a2,a3,a4,a5]).
p_ab([a2,a3,a4]).
p_ab([a2,a3]).
p_ab([a2]).
p_ab([a1,a5]).
p_ab([a1,a4,a5]).
p_ab([a1,a4]).
p_ab([a1,a3,a5]).
p_ab([a1,a3,a4,a5]).
p_ab([a1,a3,a4]).
p_ab([a1,a3]).
p_ab([a1,a2,a5]).
p_ab([a1,a2,a4,a5]).
p_ab([a1,a2,a4]).
p_ab([a1,a2,a3,a5]).
p_ab([a1,a2,a3,a4,a5]).
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
p_star_16(I1,I1) :- 
    false.
p_star_16(H1,J1) :- 
    dual(16,p,H1,J1).
p_star_17(K1,K1) :- 
    false.
p_star_17(J1,L1) :- 
    dual(17,p,J1,L1).
p_star_18(M1,M1) :- 
    false.
p_star_18(L1,N1) :- 
    dual(18,p,L1,N1).
p_star_19(O1,O1) :- 
    false.
p_star_19(N1,P1) :- 
    dual(19,p,N1,P1).
p_star_20(Q1,Q1) :- 
    false.
p_star_20(P1,R1) :- 
    dual(20,p,P1,R1).
p_star_21(S1,S1) :- 
    false.
p_star_21(R1,T1) :- 
    dual(21,p,R1,T1).
p_star_22(U1,U1) :- 
    false.
p_star_22(T1,V1) :- 
    dual(22,p,T1,V1).
p_star_23(W1,W1) :- 
    false.
p_star_23(V1,X1) :- 
    dual(23,p,V1,X1).
p_star_24(Y1,Y1) :- 
    false.
p_star_24(X1,Z1) :- 
    dual(24,p,X1,Z1).
p_star_25(A2,A2) :- 
    false.
p_star_25(Z1,B2) :- 
    dual(25,p,Z1,B2).
p_star_26(C2,C2) :- 
    false.
p_star_26(B2,D2) :- 
    dual(26,p,B2,D2).
p_star_27(E2,E2) :- 
    false.
p_star_27(D2,F2) :- 
    dual(27,p,D2,F2).
p_star_28(G2,G2) :- 
    false.
p_star_28(F2,H2) :- 
    dual(28,p,F2,H2).
p_star_29(I2,I2) :- 
    false.
p_star_29(H2,J2) :- 
    dual(29,p,H2,J2).
p_star_30(K2,K2) :- 
    false.
p_star_30(J2,L2) :- 
    dual(30,p,J2,L2).
p_star_31(M2,M2) :- 
    false.
p_star_31(L2,N2) :- 
    dual(31,p,L2,N2).
not_p(E,N2) :- 
    (true,p_star_1(E,F),true,p_star_2(F,H),true,p_star_3(H,J),true,p_star_4(J,L),true,p_star_5(L,N),true,p_star_6(N,P),true,p_star_7(P,R),true,p_star_8(R,T),true,p_star_9(T,V),true,p_star_10(V,X),true,p_star_11(X,Z),true,p_star_12(Z,B1),true,p_star_13(B1,D1),true,p_star_14(D1,F1),true,p_star_15(F1,H1),true,p_star_16(H1,J1),true,p_star_17(J1,L1),true,p_star_18(L1,N1),true,p_star_19(N1,P1),true,p_star_20(P1,R1),true,p_star_21(R1,T1),true,p_star_22(T1,V1),true,p_star_23(V1,X1),true,p_star_24(X1,Z1),true,p_star_25(Z1,B2),true,p_star_26(B2,D2),true,p_star_27(D2,F2),true,p_star_28(F2,H2),true,p_star_29(H2,J2),true,p_star_30(J2,L2),true,p_star_31(L2,N2)).

q5_ab(O2) :- 
    (q4([],P2),p(P2,O2)).
:- table q5_ab/1.
q5(Q2,R2) :- 
    (q5_ab(S2),produce_context(R2,Q2,S2)).
q5_star_1(T2,T2) :- 
    false.
q5_star_1(U2,V2) :- 
    dual(1,q5,U2,V2).
not_q5(U2,V2) :- 
    (true,q5_star_1(U2,V2)).

q4_ab(W2) :- 
    (q3([],X2),p(X2,W2)).
:- table q4_ab/1.
q4(Y2,Z2) :- 
    (q4_ab(A3),produce_context(Z2,Y2,A3)).
q4_star_1(B3,B3) :- 
    false.
q4_star_1(C3,D3) :- 
    dual(1,q4,C3,D3).
not_q4(C3,D3) :- 
    (true,q4_star_1(C3,D3)).

q3_ab(E3) :- 
    (q2([],F3),p(F3,E3)).
:- table q3_ab/1.
q3(G3,H3) :- 
    (q3_ab(I3),produce_context(H3,G3,I3)).
q3_star_1(J3,J3) :- 
    false.
q3_star_1(K3,L3) :- 
    dual(1,q3,K3,L3).
not_q3(K3,L3) :- 
    (true,q3_star_1(K3,L3)).

q2_ab(M3) :- 
    (q1([],N3),p(N3,M3)).
:- table q2_ab/1.
q2(O3,P3) :- 
    (q2_ab(Q3),produce_context(P3,O3,Q3)).
q2_star_1(R3,R3) :- 
    false.
q2_star_1(S3,T3) :- 
    dual(1,q2,S3,T3).
not_q2(S3,T3) :- 
    (true,q2_star_1(S3,T3)).

q1_ab(U3) :- 
    p([],U3).
:- table q1_ab/1.
q1(V3,W3) :- 
    (q1_ab(X3),produce_context(W3,V3,X3)).
q1_star_1(Y3,Y3) :- 
    false.
q1_star_1(Z3,A4) :- 
    dual(1,q1,Z3,A4).
not_q1(Z3,A4) :- 
    (true,q1_star_1(Z3,A4)).

not_false(B4,B4).

a1(C4,D4) :- 
    insert_abducible(a1,C4,D4).
a1_star(E4,F4) :- 
    insert_abducible(not a1,E4,F4).
a2(G4,H4) :- 
    insert_abducible(a2,G4,H4).
a2_star(I4,J4) :- 
    insert_abducible(not a2,I4,J4).
a3(K4,L4) :- 
    insert_abducible(a3,K4,L4).
a3_star(M4,N4) :- 
    insert_abducible(not a3,M4,N4).
a4(O4,P4) :- 
    insert_abducible(a4,O4,P4).
a4_star(Q4,R4) :- 
    insert_abducible(not a4,Q4,R4).
a5(S4,T4) :- 
    insert_abducible(a5,S4,T4).
a5_star(U4,V4) :- 
    insert_abducible(not a5,U4,V4).
