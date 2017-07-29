p_ab([a6]).
p_ab([a5,a6]).
p_ab([a5]).
p_ab([a4,a6]).
p_ab([a4,a5,a6]).
p_ab([a4,a5]).
p_ab([a4]).
p_ab([a3,a6]).
p_ab([a3,a5,a6]).
p_ab([a3,a5]).
p_ab([a3,a4,a6]).
p_ab([a3,a4,a5,a6]).
p_ab([a3,a4,a5]).
p_ab([a3,a4]).
p_ab([a3]).
p_ab([a2,a6]).
p_ab([a2,a5,a6]).
p_ab([a2,a5]).
p_ab([a2,a4,a6]).
p_ab([a2,a4,a5,a6]).
p_ab([a2,a4,a5]).
p_ab([a2,a4]).
p_ab([a2,a3,a6]).
p_ab([a2,a3,a5,a6]).
p_ab([a2,a3,a5]).
p_ab([a2,a3,a4,a6]).
p_ab([a2,a3,a4,a5,a6]).
p_ab([a2,a3,a4,a5]).
p_ab([a2,a3,a4]).
p_ab([a2,a3]).
p_ab([a2]).
p_ab([a1,a6]).
p_ab([a1,a5,a6]).
p_ab([a1,a5]).
p_ab([a1,a4,a6]).
p_ab([a1,a4,a5,a6]).
p_ab([a1,a4,a5]).
p_ab([a1,a4]).
p_ab([a1,a3,a6]).
p_ab([a1,a3,a5,a6]).
p_ab([a1,a3,a5]).
p_ab([a1,a3,a4,a6]).
p_ab([a1,a3,a4,a5,a6]).
p_ab([a1,a3,a4,a5]).
p_ab([a1,a3,a4]).
p_ab([a1,a3]).
p_ab([a1,a2,a6]).
p_ab([a1,a2,a5,a6]).
p_ab([a1,a2,a5]).
p_ab([a1,a2,a4,a6]).
p_ab([a1,a2,a4,a5,a6]).
p_ab([a1,a2,a4,a5]).
p_ab([a1,a2,a4]).
p_ab([a1,a2,a3,a6]).
p_ab([a1,a2,a3,a5,a6]).
p_ab([a1,a2,a3,a5]).
p_ab([a1,a2,a3,a4,a6]).
p_ab([a1,a2,a3,a4,a5,a6]).
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
p_star_32(O2,O2) :- 
    false.
p_star_32(N2,P2) :- 
    dual(32,p,N2,P2).
p_star_33(Q2,Q2) :- 
    false.
p_star_33(P2,R2) :- 
    dual(33,p,P2,R2).
p_star_34(S2,S2) :- 
    false.
p_star_34(R2,T2) :- 
    dual(34,p,R2,T2).
p_star_35(U2,U2) :- 
    false.
p_star_35(T2,V2) :- 
    dual(35,p,T2,V2).
p_star_36(W2,W2) :- 
    false.
p_star_36(V2,X2) :- 
    dual(36,p,V2,X2).
p_star_37(Y2,Y2) :- 
    false.
p_star_37(X2,Z2) :- 
    dual(37,p,X2,Z2).
p_star_38(A3,A3) :- 
    false.
p_star_38(Z2,B3) :- 
    dual(38,p,Z2,B3).
p_star_39(C3,C3) :- 
    false.
p_star_39(B3,D3) :- 
    dual(39,p,B3,D3).
p_star_40(E3,E3) :- 
    false.
p_star_40(D3,F3) :- 
    dual(40,p,D3,F3).
p_star_41(G3,G3) :- 
    false.
p_star_41(F3,H3) :- 
    dual(41,p,F3,H3).
p_star_42(I3,I3) :- 
    false.
p_star_42(H3,J3) :- 
    dual(42,p,H3,J3).
p_star_43(K3,K3) :- 
    false.
p_star_43(J3,L3) :- 
    dual(43,p,J3,L3).
p_star_44(M3,M3) :- 
    false.
p_star_44(L3,N3) :- 
    dual(44,p,L3,N3).
p_star_45(O3,O3) :- 
    false.
p_star_45(N3,P3) :- 
    dual(45,p,N3,P3).
p_star_46(Q3,Q3) :- 
    false.
p_star_46(P3,R3) :- 
    dual(46,p,P3,R3).
p_star_47(S3,S3) :- 
    false.
p_star_47(R3,T3) :- 
    dual(47,p,R3,T3).
p_star_48(U3,U3) :- 
    false.
p_star_48(T3,V3) :- 
    dual(48,p,T3,V3).
p_star_49(W3,W3) :- 
    false.
p_star_49(V3,X3) :- 
    dual(49,p,V3,X3).
p_star_50(Y3,Y3) :- 
    false.
p_star_50(X3,Z3) :- 
    dual(50,p,X3,Z3).
p_star_51(A4,A4) :- 
    false.
p_star_51(Z3,B4) :- 
    dual(51,p,Z3,B4).
p_star_52(C4,C4) :- 
    false.
p_star_52(B4,D4) :- 
    dual(52,p,B4,D4).
p_star_53(E4,E4) :- 
    false.
p_star_53(D4,F4) :- 
    dual(53,p,D4,F4).
p_star_54(G4,G4) :- 
    false.
p_star_54(F4,H4) :- 
    dual(54,p,F4,H4).
p_star_55(I4,I4) :- 
    false.
p_star_55(H4,J4) :- 
    dual(55,p,H4,J4).
p_star_56(K4,K4) :- 
    false.
p_star_56(J4,L4) :- 
    dual(56,p,J4,L4).
p_star_57(M4,M4) :- 
    false.
p_star_57(L4,N4) :- 
    dual(57,p,L4,N4).
p_star_58(O4,O4) :- 
    false.
p_star_58(N4,P4) :- 
    dual(58,p,N4,P4).
p_star_59(Q4,Q4) :- 
    false.
p_star_59(P4,R4) :- 
    dual(59,p,P4,R4).
p_star_60(S4,S4) :- 
    false.
p_star_60(R4,T4) :- 
    dual(60,p,R4,T4).
p_star_61(U4,U4) :- 
    false.
p_star_61(T4,V4) :- 
    dual(61,p,T4,V4).
p_star_62(W4,W4) :- 
    false.
p_star_62(V4,X4) :- 
    dual(62,p,V4,X4).
p_star_63(Y4,Y4) :- 
    false.
p_star_63(X4,Z4) :- 
    dual(63,p,X4,Z4).
not_p(E,Z4) :- 
    (true,p_star_1(E,F),true,p_star_2(F,H),true,p_star_3(H,J),true,p_star_4(J,L),true,p_star_5(L,N),true,p_star_6(N,P),true,p_star_7(P,R),true,p_star_8(R,T),true,p_star_9(T,V),true,p_star_10(V,X),true,p_star_11(X,Z),true,p_star_12(Z,B1),true,p_star_13(B1,D1),true,p_star_14(D1,F1),true,p_star_15(F1,H1),true,p_star_16(H1,J1),true,p_star_17(J1,L1),true,p_star_18(L1,N1),true,p_star_19(N1,P1),true,p_star_20(P1,R1),true,p_star_21(R1,T1),true,p_star_22(T1,V1),true,p_star_23(V1,X1),true,p_star_24(X1,Z1),true,p_star_25(Z1,B2),true,p_star_26(B2,D2),true,p_star_27(D2,F2),true,p_star_28(F2,H2),true,p_star_29(H2,J2),true,p_star_30(J2,L2),true,p_star_31(L2,N2),true,...,...).

q6_ab(A5) :- 
    (q5([],B5),p(B5,A5)).
:- table q6_ab/1.
q6(C5,D5) :- 
    (q6_ab(E5),produce_context(D5,C5,E5)).
q6_star_1(F5,F5) :- 
    false.
q6_star_1(G5,H5) :- 
    dual(1,q6,G5,H5).
not_q6(G5,H5) :- 
    (true,q6_star_1(G5,H5)).

q5_ab(I5) :- 
    (q4([],J5),p(J5,I5)).
:- table q5_ab/1.
q5(K5,L5) :- 
    (q5_ab(M5),produce_context(L5,K5,M5)).
q5_star_1(N5,N5) :- 
    false.
q5_star_1(O5,P5) :- 
    dual(1,q5,O5,P5).
not_q5(O5,P5) :- 
    (true,q5_star_1(O5,P5)).

q4_ab(Q5) :- 
    (q3([],R5),p(R5,Q5)).
:- table q4_ab/1.
q4(S5,T5) :- 
    (q4_ab(U5),produce_context(T5,S5,U5)).
q4_star_1(V5,V5) :- 
    false.
q4_star_1(W5,X5) :- 
    dual(1,q4,W5,X5).
not_q4(W5,X5) :- 
    (true,q4_star_1(W5,X5)).

q3_ab(Y5) :- 
    (q2([],Z5),p(Z5,Y5)).
:- table q3_ab/1.
q3(A6,B6) :- 
    (q3_ab(C6),produce_context(B6,A6,C6)).
q3_star_1(D6,D6) :- 
    false.
q3_star_1(E6,F6) :- 
    dual(1,q3,E6,F6).
not_q3(E6,F6) :- 
    (true,q3_star_1(E6,F6)).

q2_ab(G6) :- 
    (q1([],H6),p(H6,G6)).
:- table q2_ab/1.
q2(I6,J6) :- 
    (q2_ab(K6),produce_context(J6,I6,K6)).
q2_star_1(L6,L6) :- 
    false.
q2_star_1(M6,N6) :- 
    dual(1,q2,M6,N6).
not_q2(M6,N6) :- 
    (true,q2_star_1(M6,N6)).

q1_ab(O6) :- 
    p([],O6).
:- table q1_ab/1.
q1(P6,Q6) :- 
    (q1_ab(R6),produce_context(Q6,P6,R6)).
q1_star_1(S6,S6) :- 
    false.
q1_star_1(T6,U6) :- 
    dual(1,q1,T6,U6).
not_q1(T6,U6) :- 
    (true,q1_star_1(T6,U6)).

not_false(V6,V6).

a1(W6,X6) :- 
    insert_abducible(a1,W6,X6).
a1_star(Y6,Z6) :- 
    insert_abducible(not a1,Y6,Z6).
a2(A7,B7) :- 
    insert_abducible(a2,A7,B7).
a2_star(C7,D7) :- 
    insert_abducible(not a2,C7,D7).
a3(E7,F7) :- 
    insert_abducible(a3,E7,F7).
a3_star(G7,H7) :- 
    insert_abducible(not a3,G7,H7).
a4(I7,J7) :- 
    insert_abducible(a4,I7,J7).
a4_star(K7,L7) :- 
    insert_abducible(not a4,K7,L7).
a5(M7,N7) :- 
    insert_abducible(a5,M7,N7).
a5_star(O7,P7) :- 
    insert_abducible(not a5,O7,P7).
a6(Q7,R7) :- 
    insert_abducible(a6,Q7,R7).
a6_star(S7,T7) :- 
    insert_abducible(not a6,S7,T7).
