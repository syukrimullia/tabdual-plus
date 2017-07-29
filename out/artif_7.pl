p_ab([a7]).
p_ab([a6,a7]).
p_ab([a6]).
p_ab([a5,a7]).
p_ab([a5,a6,a7]).
p_ab([a5,a6]).
p_ab([a5]).
p_ab([a4,a7]).
p_ab([a4,a6,a7]).
p_ab([a4,a6]).
p_ab([a4,a5,a7]).
p_ab([a4,a5,a6,a7]).
p_ab([a4,a5,a6]).
p_ab([a4,a5]).
p_ab([a4]).
p_ab([a3,a7]).
p_ab([a3,a6,a7]).
p_ab([a3,a6]).
p_ab([a3,a5,a7]).
p_ab([a3,a5,a6,a7]).
p_ab([a3,a5,a6]).
p_ab([a3,a5]).
p_ab([a3,a4,a7]).
p_ab([a3,a4,a6,a7]).
p_ab([a3,a4,a6]).
p_ab([a3,a4,a5,a7]).
p_ab([a3,a4,a5,a6,a7]).
p_ab([a3,a4,a5,a6]).
p_ab([a3,a4,a5]).
p_ab([a3,a4]).
p_ab([a3]).
p_ab([a2,a7]).
p_ab([a2,a6,a7]).
p_ab([a2,a6]).
p_ab([a2,a5,a7]).
p_ab([a2,a5,a6,a7]).
p_ab([a2,a5,a6]).
p_ab([a2,a5]).
p_ab([a2,a4,a7]).
p_ab([a2,a4,a6,a7]).
p_ab([a2,a4,a6]).
p_ab([a2,a4,a5,a7]).
p_ab([a2,a4,a5,a6,a7]).
p_ab([a2,a4,a5,a6]).
p_ab([a2,a4,a5]).
p_ab([a2,a4]).
p_ab([a2,a3,a7]).
p_ab([a2,a3,a6,a7]).
p_ab([a2,a3,a6]).
p_ab([a2,a3,a5,a7]).
p_ab([a2,a3,a5,a6,a7]).
p_ab([a2,a3,a5,a6]).
p_ab([a2,a3,a5]).
p_ab([a2,a3,a4,a7]).
p_ab([a2,a3,a4,a6,a7]).
p_ab([a2,a3,a4,a6]).
p_ab([a2,a3,a4,a5,a7]).
p_ab([a2,a3,a4,a5,a6,a7]).
p_ab([a2,a3,a4,a5,a6]).
p_ab([a2,a3,a4,a5]).
p_ab([a2,a3,a4]).
p_ab([a2,a3]).
p_ab([a2]).
p_ab([a1,a7]).
p_ab([a1,a6,a7]).
p_ab([a1,a6]).
p_ab([a1,a5,a7]).
p_ab([a1,a5,a6,a7]).
p_ab([a1,a5,a6]).
p_ab([a1,a5]).
p_ab([a1,a4,a7]).
p_ab([a1,a4,a6,a7]).
p_ab([a1,a4,a6]).
p_ab([a1,a4,a5,a7]).
p_ab([a1,a4,a5,a6,a7]).
p_ab([a1,a4,a5,a6]).
p_ab([a1,a4,a5]).
p_ab([a1,a4]).
p_ab([a1,a3,a7]).
p_ab([a1,a3,a6,a7]).
p_ab([a1,a3,a6]).
p_ab([a1,a3,a5,a7]).
p_ab([a1,a3,a5,a6,a7]).
p_ab([a1,a3,a5,a6]).
p_ab([a1,a3,a5]).
p_ab([a1,a3,a4,a7]).
p_ab([a1,a3,a4,a6,a7]).
p_ab([a1,a3,a4,a6]).
p_ab([a1,a3,a4,a5,a7]).
p_ab([a1,a3,a4,a5,a6,a7]).
p_ab([a1,a3,a4,a5,a6]).
p_ab([a1,a3,a4,a5]).
p_ab([a1,a3,a4]).
p_ab([a1,a3]).
p_ab([a1,a2,a7]).
p_ab([a1,a2,a6,a7]).
p_ab([a1,a2,a6]).
p_ab([a1,a2,a5,a7]).
p_ab([a1,a2,a5,a6,a7]).
p_ab([a1,a2,a5,a6]).
p_ab([a1,a2,a5]).
p_ab([a1,a2,a4,a7]).
p_ab([a1,a2,a4,a6,a7]).
p_ab([a1,a2,a4,a6]).
p_ab([a1,a2,a4,a5,a7]).
p_ab([a1,a2,a4,a5,a6,a7]).
p_ab([a1,a2,a4,a5,a6]).
p_ab([a1,a2,a4,a5]).
p_ab([a1,a2,a4]).
p_ab([a1,a2,a3,a7]).
p_ab([a1,a2,a3,a6,a7]).
p_ab([a1,a2,a3,a6]).
p_ab([a1,a2,a3,a5,a7]).
p_ab([a1,a2,a3,a5,a6,a7]).
p_ab([a1,a2,a3,a5,a6]).
p_ab([a1,a2,a3,a5]).
p_ab([a1,a2,a3,a4,a7]).
p_ab([a1,a2,a3,a4,a6,a7]).
p_ab([a1,a2,a3,a4,a6]).
p_ab([a1,a2,a3,a4,a5,a7]).
p_ab([a1,a2,a3,a4,a5,a6,a7]).
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
p_star_64(A5,A5) :- 
    false.
p_star_64(Z4,B5) :- 
    dual(64,p,Z4,B5).
p_star_65(C5,C5) :- 
    false.
p_star_65(B5,D5) :- 
    dual(65,p,B5,D5).
p_star_66(E5,E5) :- 
    false.
p_star_66(D5,F5) :- 
    dual(66,p,D5,F5).
p_star_67(G5,G5) :- 
    false.
p_star_67(F5,H5) :- 
    dual(67,p,F5,H5).
p_star_68(I5,I5) :- 
    false.
p_star_68(H5,J5) :- 
    dual(68,p,H5,J5).
p_star_69(K5,K5) :- 
    false.
p_star_69(J5,L5) :- 
    dual(69,p,J5,L5).
p_star_70(M5,M5) :- 
    false.
p_star_70(L5,N5) :- 
    dual(70,p,L5,N5).
p_star_71(O5,O5) :- 
    false.
p_star_71(N5,P5) :- 
    dual(71,p,N5,P5).
p_star_72(Q5,Q5) :- 
    false.
p_star_72(P5,R5) :- 
    dual(72,p,P5,R5).
p_star_73(S5,S5) :- 
    false.
p_star_73(R5,T5) :- 
    dual(73,p,R5,T5).
p_star_74(U5,U5) :- 
    false.
p_star_74(T5,V5) :- 
    dual(74,p,T5,V5).
p_star_75(W5,W5) :- 
    false.
p_star_75(V5,X5) :- 
    dual(75,p,V5,X5).
p_star_76(Y5,Y5) :- 
    false.
p_star_76(X5,Z5) :- 
    dual(76,p,X5,Z5).
p_star_77(A6,A6) :- 
    false.
p_star_77(Z5,B6) :- 
    dual(77,p,Z5,B6).
p_star_78(C6,C6) :- 
    false.
p_star_78(B6,D6) :- 
    dual(78,p,B6,D6).
p_star_79(E6,E6) :- 
    false.
p_star_79(D6,F6) :- 
    dual(79,p,D6,F6).
p_star_80(G6,G6) :- 
    false.
p_star_80(F6,H6) :- 
    dual(80,p,F6,H6).
p_star_81(I6,I6) :- 
    false.
p_star_81(H6,J6) :- 
    dual(81,p,H6,J6).
p_star_82(K6,K6) :- 
    false.
p_star_82(J6,L6) :- 
    dual(82,p,J6,L6).
p_star_83(M6,M6) :- 
    false.
p_star_83(L6,N6) :- 
    dual(83,p,L6,N6).
p_star_84(O6,O6) :- 
    false.
p_star_84(N6,P6) :- 
    dual(84,p,N6,P6).
p_star_85(Q6,Q6) :- 
    false.
p_star_85(P6,R6) :- 
    dual(85,p,P6,R6).
p_star_86(S6,S6) :- 
    false.
p_star_86(R6,T6) :- 
    dual(86,p,R6,T6).
p_star_87(U6,U6) :- 
    false.
p_star_87(T6,V6) :- 
    dual(87,p,T6,V6).
p_star_88(W6,W6) :- 
    false.
p_star_88(V6,X6) :- 
    dual(88,p,V6,X6).
p_star_89(Y6,Y6) :- 
    false.
p_star_89(X6,Z6) :- 
    dual(89,p,X6,Z6).
p_star_90(A7,A7) :- 
    false.
p_star_90(Z6,B7) :- 
    dual(90,p,Z6,B7).
p_star_91(C7,C7) :- 
    false.
p_star_91(B7,D7) :- 
    dual(91,p,B7,D7).
p_star_92(E7,E7) :- 
    false.
p_star_92(D7,F7) :- 
    dual(92,p,D7,F7).
p_star_93(G7,G7) :- 
    false.
p_star_93(F7,H7) :- 
    dual(93,p,F7,H7).
p_star_94(I7,I7) :- 
    false.
p_star_94(H7,J7) :- 
    dual(94,p,H7,J7).
p_star_95(K7,K7) :- 
    false.
p_star_95(J7,L7) :- 
    dual(95,p,J7,L7).
p_star_96(M7,M7) :- 
    false.
p_star_96(L7,N7) :- 
    dual(96,p,L7,N7).
p_star_97(O7,O7) :- 
    false.
p_star_97(N7,P7) :- 
    dual(97,p,N7,P7).
p_star_98(Q7,Q7) :- 
    false.
p_star_98(P7,R7) :- 
    dual(98,p,P7,R7).
p_star_99(S7,S7) :- 
    false.
p_star_99(R7,T7) :- 
    dual(99,p,R7,T7).
p_star_100(U7,U7) :- 
    false.
p_star_100(T7,V7) :- 
    dual(100,p,T7,V7).
p_star_101(W7,W7) :- 
    false.
p_star_101(V7,X7) :- 
    dual(101,p,V7,X7).
p_star_102(Y7,Y7) :- 
    false.
p_star_102(X7,Z7) :- 
    dual(102,p,X7,Z7).
p_star_103(A8,A8) :- 
    false.
p_star_103(Z7,B8) :- 
    dual(103,p,Z7,B8).
p_star_104(C8,C8) :- 
    false.
p_star_104(B8,D8) :- 
    dual(104,p,B8,D8).
p_star_105(E8,E8) :- 
    false.
p_star_105(D8,F8) :- 
    dual(105,p,D8,F8).
p_star_106(G8,G8) :- 
    false.
p_star_106(F8,H8) :- 
    dual(106,p,F8,H8).
p_star_107(I8,I8) :- 
    false.
p_star_107(H8,J8) :- 
    dual(107,p,H8,J8).
p_star_108(K8,K8) :- 
    false.
p_star_108(J8,L8) :- 
    dual(108,p,J8,L8).
p_star_109(M8,M8) :- 
    false.
p_star_109(L8,N8) :- 
    dual(109,p,L8,N8).
p_star_110(O8,O8) :- 
    false.
p_star_110(N8,P8) :- 
    dual(110,p,N8,P8).
p_star_111(Q8,Q8) :- 
    false.
p_star_111(P8,R8) :- 
    dual(111,p,P8,R8).
p_star_112(S8,S8) :- 
    false.
p_star_112(R8,T8) :- 
    dual(112,p,R8,T8).
p_star_113(U8,U8) :- 
    false.
p_star_113(T8,V8) :- 
    dual(113,p,T8,V8).
p_star_114(W8,W8) :- 
    false.
p_star_114(V8,X8) :- 
    dual(114,p,V8,X8).
p_star_115(Y8,Y8) :- 
    false.
p_star_115(X8,Z8) :- 
    dual(115,p,X8,Z8).
p_star_116(A9,A9) :- 
    false.
p_star_116(Z8,B9) :- 
    dual(116,p,Z8,B9).
p_star_117(C9,C9) :- 
    false.
p_star_117(B9,D9) :- 
    dual(117,p,B9,D9).
p_star_118(E9,E9) :- 
    false.
p_star_118(D9,F9) :- 
    dual(118,p,D9,F9).
p_star_119(G9,G9) :- 
    false.
p_star_119(F9,H9) :- 
    dual(119,p,F9,H9).
p_star_120(I9,I9) :- 
    false.
p_star_120(H9,J9) :- 
    dual(120,p,H9,J9).
p_star_121(K9,K9) :- 
    false.
p_star_121(J9,L9) :- 
    dual(121,p,J9,L9).
p_star_122(M9,M9) :- 
    false.
p_star_122(L9,N9) :- 
    dual(122,p,L9,N9).
p_star_123(O9,O9) :- 
    false.
p_star_123(N9,P9) :- 
    dual(123,p,N9,P9).
p_star_124(Q9,Q9) :- 
    false.
p_star_124(P9,R9) :- 
    dual(124,p,P9,R9).
p_star_125(S9,S9) :- 
    false.
p_star_125(R9,T9) :- 
    dual(125,p,R9,T9).
p_star_126(U9,U9) :- 
    false.
p_star_126(T9,V9) :- 
    dual(126,p,T9,V9).
p_star_127(W9,W9) :- 
    false.
p_star_127(V9,X9) :- 
    dual(127,p,V9,X9).
not_p(E,X9) :- 
    (true,p_star_1(E,F),true,p_star_2(F,H),true,p_star_3(H,J),true,p_star_4(J,L),true,p_star_5(L,N),true,p_star_6(N,P),true,p_star_7(P,R),true,p_star_8(R,T),true,p_star_9(T,V),true,p_star_10(V,X),true,p_star_11(X,Z),true,p_star_12(Z,B1),true,p_star_13(B1,D1),true,p_star_14(D1,F1),true,p_star_15(F1,H1),true,p_star_16(H1,J1),true,p_star_17(J1,L1),true,p_star_18(L1,N1),true,p_star_19(N1,P1),true,p_star_20(P1,R1),true,p_star_21(R1,T1),true,p_star_22(T1,V1),true,p_star_23(V1,X1),true,p_star_24(X1,Z1),true,p_star_25(Z1,B2),true,p_star_26(B2,D2),true,p_star_27(D2,F2),true,p_star_28(F2,H2),true,p_star_29(H2,J2),true,p_star_30(J2,L2),true,p_star_31(L2,N2),true,...,...).

q7_ab(Y9) :- 
    (q6([],Z9),p(Z9,Y9)).
:- table q7_ab/1.
q7(A10,B10) :- 
    (q7_ab(C10),produce_context(B10,A10,C10)).
q7_star_1(D10,D10) :- 
    false.
q7_star_1(E10,F10) :- 
    dual(1,q7,E10,F10).
not_q7(E10,F10) :- 
    (true,q7_star_1(E10,F10)).

q6_ab(G10) :- 
    (q5([],H10),p(H10,G10)).
:- table q6_ab/1.
q6(I10,J10) :- 
    (q6_ab(K10),produce_context(J10,I10,K10)).
q6_star_1(L10,L10) :- 
    false.
q6_star_1(M10,N10) :- 
    dual(1,q6,M10,N10).
not_q6(M10,N10) :- 
    (true,q6_star_1(M10,N10)).

q5_ab(O10) :- 
    (q4([],P10),p(P10,O10)).
:- table q5_ab/1.
q5(Q10,R10) :- 
    (q5_ab(S10),produce_context(R10,Q10,S10)).
q5_star_1(T10,T10) :- 
    false.
q5_star_1(U10,V10) :- 
    dual(1,q5,U10,V10).
not_q5(U10,V10) :- 
    (true,q5_star_1(U10,V10)).

q4_ab(W10) :- 
    (q3([],X10),p(X10,W10)).
:- table q4_ab/1.
q4(Y10,Z10) :- 
    (q4_ab(A11),produce_context(Z10,Y10,A11)).
q4_star_1(B11,B11) :- 
    false.
q4_star_1(C11,D11) :- 
    dual(1,q4,C11,D11).
not_q4(C11,D11) :- 
    (true,q4_star_1(C11,D11)).

q3_ab(E11) :- 
    (q2([],F11),p(F11,E11)).
:- table q3_ab/1.
q3(G11,H11) :- 
    (q3_ab(I11),produce_context(H11,G11,I11)).
q3_star_1(J11,J11) :- 
    false.
q3_star_1(K11,L11) :- 
    dual(1,q3,K11,L11).
not_q3(K11,L11) :- 
    (true,q3_star_1(K11,L11)).

q2_ab(M11) :- 
    (q1([],N11),p(N11,M11)).
:- table q2_ab/1.
q2(O11,P11) :- 
    (q2_ab(Q11),produce_context(P11,O11,Q11)).
q2_star_1(R11,R11) :- 
    false.
q2_star_1(S11,T11) :- 
    dual(1,q2,S11,T11).
not_q2(S11,T11) :- 
    (true,q2_star_1(S11,T11)).

q1_ab(U11) :- 
    p([],U11).
:- table q1_ab/1.
q1(V11,W11) :- 
    (q1_ab(X11),produce_context(W11,V11,X11)).
q1_star_1(Y11,Y11) :- 
    false.
q1_star_1(Z11,A12) :- 
    dual(1,q1,Z11,A12).
not_q1(Z11,A12) :- 
    (true,q1_star_1(Z11,A12)).

not_false(B12,B12).

a1(C12,D12) :- 
    insert_abducible(a1,C12,D12).
a1_star(E12,F12) :- 
    insert_abducible(not a1,E12,F12).
a2(G12,H12) :- 
    insert_abducible(a2,G12,H12).
a2_star(I12,J12) :- 
    insert_abducible(not a2,I12,J12).
a3(K12,L12) :- 
    insert_abducible(a3,K12,L12).
a3_star(M12,N12) :- 
    insert_abducible(not a3,M12,N12).
a4(O12,P12) :- 
    insert_abducible(a4,O12,P12).
a4_star(Q12,R12) :- 
    insert_abducible(not a4,Q12,R12).
a5(S12,T12) :- 
    insert_abducible(a5,S12,T12).
a5_star(U12,V12) :- 
    insert_abducible(not a5,U12,V12).
a6(W12,X12) :- 
    insert_abducible(a6,W12,X12).
a6_star(Y12,Z12) :- 
    insert_abducible(not a6,Y12,Z12).
a7(A13,B13) :- 
    insert_abducible(a7,A13,B13).
a7_star(C13,D13) :- 
    insert_abducible(not a7,C13,D13).
