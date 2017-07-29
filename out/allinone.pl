exists(phase0,drug).
possible_drug_effect(A,inhibit,B).
possible_drug_effect(C,induce,D).
absent(calpain).
absent(bax).
absent(cytoc).
absent(erstress).
absent(caspase3).
absent(nFKB).
absent(bcl_xl).
reaction(rct(tNF_FasL_Trail,rIP1_TRAF2_CIAP_TRADD_FADD)).
reaction(rct(rIP1_TRAF2_CIAP_TRADD_FADD,nIK)).
reaction(rct(nIK,ikBA_nFKB)).
reaction(rct(ikBA_nFKB,nFKB)).
reaction(rct(nFKB,apoptosis)).
reaction(rct(rIP1_TRAF2_CIAP_TRADD_FADD,tAK1)).
reaction(rct(tAK1,iKKa_IKKb_iKKc)).
reaction(rct(iKKa_IKKb_iKKc,ikBA_nFKB)).
reaction(rct(traf2_rip_casp8_fadd_tradd,caspase3)).
reaction(rct(traf2_rip_casp8_fadd_tradd,caspase6)).
reaction(rct(traf2_rip_casp8_fadd_tradd,caspase7)).
reaction(rct(traf2_rip_casp10_fadd_tradd,caspase3)).
reaction(rct(traf2_rip_casp10_fadd_tradd,caspase6)).
reaction(rct(traf2_rip_casp10_fadd_tradd,caspase7)).
reaction(rct(erstress,ca2)).
reaction(rct(ca2,calpain)).
reaction(rct(calpain,caspase12)).
reaction(rct(caspase12,caspase9)).
reaction(rct(caspase9,caspase3)).
reaction(rct(caspase9,caspase6)).
reaction(rct(caspase9,caspase7)).
reaction(rct(apaf1_Caspase9,caspase3)).
reaction(rct(apaf1_Caspase9,caspase6)).
reaction(rct(apaf1_Caspase9,caspase7)).
reaction(rct(caspase7,caspase3)).
reaction(rct(caspase7,caspase6)).
reaction(rct(caspase3,rock)).
reaction(rct(caspase6,rock)).
reaction(rct(caspase7,rock)).
reaction(rct(rock,apoptosis)).
reaction(rct(caspase3,icad_cad)).
reaction(rct(caspase6,icad_cad)).
reaction(rct(caspase7,icad_cad)).
reaction(rct(icad_cad,cad)).
reaction(rct(cad,apoptosis)).
reaction(rct(fasl,traf2_rip_ciap_fadd_tradd)).
reaction(rct(traf2_rip_ciap_fadd_tradd,jnk)).
reaction(rct(jnk,p53)).
reaction(rct(jnk,cjun)).
reaction(rct(cjun,bim)).
reaction(rct(cellcycle,cdc2)).
reaction(rct(cdc2,bad)).
reaction(rct(foxo1,p53)).
reaction(rct(survival_factors,pl3k)).
reaction(rct(pl3k,akt)).
reaction(rct(akt,s1433)).
reaction(rct(pl3k,p70_s6k)).
reaction(rct(survival_factors,erk1_2)).
reaction(rct(erk1_2,p90rsk)).
reaction(rct(survival_factors,pkc)).
reaction(rct(pkc,p90rsk)).
reaction(rct(survival_factors,pka)).
reaction(rct(cancineurin,bad)).
reaction(rct(fasl,fas_cd95)).
reaction(rct(fas_cd95,traf2_rip_casp8_fadd_tradd)).
reaction(rct(fas_cd95,traf2_rip_casp10_fadd_tradd)).
reaction(rct(traf2_rip_casp10_fadd_tradd,bid)).
reaction(rct(bid,tbid)).
reaction(rct(tbid,bax)).
reaction(rct(bax,cytoc)).
reaction(rct(bax,arts)).
reaction(rct(bax,htra2)).
reaction(rct(bax,smacdiablo)).
reaction(rct(bax,aif)).
reaction(rct(bax,endo_g)).
reaction(rct(tbid,bak)).
reaction(rct(bak,cytoc)).
reaction(rct(bak,arts)).
reaction(rct(bak,htra2)).
reaction(rct(bak,smacdiablo)).
reaction(rct(bak,aif)).
reaction(rct(bak,endo_g)).
reaction(rct(bim_lc8,bim)).
reaction(rct(lc8_bmt,bcl2_bmt)).
reaction(rct(death_stimuli,jnk)).
reaction(rct(jnk,hrk_dp5)).
reaction(rct(jnk,bax)).
reaction(rct(dnadamage,caspase2_raiid_pidd)).
reaction(rct(dnadamage,ing2)).
reaction(rct(dnadamage,atm_atr)).
reaction(rct(caspase2_raiid_pidd,bax)).
reaction(rct(ing2,p53)).
reaction(rct(p53,caspase2_raiid_pidd)).
reaction(rct(p53,bax)).
reaction(rct(p53,noxa)).
reaction(rct(p53,mcl1_puma)).
reaction(rct(nad,sirt2)).
reaction(rct(endo_g,apoptosis)).
reaction(rct(aif,apoptosis)).
reaction(rct(cytoc,apaf1_Caspase9)).
reaction(rct(hsp60,caspase3)).
reaction(rct(hsp60,caspase6)).
reaction(rct(hsp60,caspase7)).
reaction(rct(caspase3,apoptosis)).
reaction(rct(caspase6,apoptosis)).
reaction(rct(caspase7,apoptosis)).
inhibitor(flip,itch).
inhibitor(traf2_rip_casp8_fadd_tradd,flip).
inhibitor(traf2_rip_casp10_fadd_tradd,flip).
inhibitor(bid,traf2_rip_casp8_fadd_tradd).
inhibitor(bid,traf2_rip_casp10_fadd_tradd).
inhibitor(p53,sir2).
inhibitor(foxo1,s1433).
inhibitor(s1433,jnk).
inhibitor(bad,p70_s6k).
inhibitor(bad,p90rsk).
inhibitor(bad,s1433).
inhibitor(bad,pka).
inhibitor(bcl_xl,bad).
inhibitor(apaf1_Caspase9,bcl_xl).
inhibitor(cytoc,bcl_xl).
inhibitor(arts,bcl_xl).
inhibitor(htra2,bcl_xl).
inhibitor(smacdiablo,bcl_xl).
inhibitor(aif,bcl_xl).
inhibitor(endo_g,bcl_xl).
inhibitor(bcl_xl,tbid).
inhibitor(mcl_1,mule).
inhibitor(bim,mcl_1).
inhibitor(bcl2_bmt,bim).
inhibitor(cytoc,bcl2_bmt).
inhibitor(arts,bcl2_bmt).
inhibitor(htra2,bcl2_bmt).
inhibitor(smacdiablo,bcl2_bmt).
inhibitor(aif,bcl2_bmt).
inhibitor(endo_g,bcl2_bmt).
inhibitor(caspase2_raiid_pidd,camkll).
inhibitor(bcl2,hrk_dp5).
inhibitor(cytoc,bcl2).
inhibitor(arts,bcl2).
inhibitor(htra2,bcl2).
inhibitor(smacdiablo,bcl2).
inhibitor(aif,bcl2).
inhibitor(endo_g,bcl2).
inhibitor(bax,bcl2).
inhibitor(bcl2,noxa).
inhibitor(bcl2,mcl1_puma).
inhibitor(mcl1_puma,mule).
inhibitor(p53,mule).
inhibitor(p53,sirt2).
inhibitor(xiap,smacdiablo).
inhibitor(caspase7,xiap).
inhibitor(caspase3,xiap).
inhibitor(caspase6,xiap).
inhibitor(xiap,htra2).
inhibitor(xiap,arts).
oncogene(pl3k).
oncogene(akt).
oncogene(tNF_FasL_Trail).
tumor_suppressor(bax).
tumor_suppressor(p53).
tumor_suppressor(bcl2).
tumor_suppressor(atm_atr).

tumor_suppressor(E,F,F) :- 
    tumor_suppressor(E).
not_tumor_suppressor(E,G,G) :- 
    not tumor_suppressor(E).
oncogene(H,I,I) :- 
    oncogene(H).
not_oncogene(H,J,J) :- 
    not oncogene(H).
inhibitor(K,L,M,M) :- 
    inhibitor(K,L).
not_inhibitor(K,L,N,N) :- 
    not inhibitor(K,L).
reaction(O,P,P) :- 
    reaction(O).
not_reaction(O,Q,Q) :- 
    not reaction(O).
absent(R,S,S) :- 
    absent(R).
not_absent(R,T,T) :- 
    not absent(R).
possible_drug_effect(U,V,W,X,X) :- 
    possible_drug_effect(U,V,W).
not_possible_drug_effect(U,V,W,Y,Y) :- 
    not possible_drug_effect(U,V,W).
exists(Z,A1,B1,B1) :- 
    exists(Z,A1).
not_exists(Z,A1,C1,C1) :- 
    not exists(Z,A1).

active_ab(D1,E1,F1) :- 
    (not_absent(E1,[],G1),externally_induced(D1,E1,G1,F1)).
active_ab(H1,I1,J1) :- 
    (not_absent(I1,[],K1),not_inhibited(H1,I1,K1,L1),normally_active(H1,I1,L1,J1)).
:- table active_ab(_,_,po(subset/2)).
active(M1,N1,O1,P1) :- 
    (active_ab(M1,N1,Q1),produce_context(P1,O1,Q1)).
active_star_1(M1,N1,R1,R1) :- 
    [M1,N1] \= [D1,E1].
active_star_1(S1,T1,U1,V1) :- 
    dual(1,active(S1,T1),U1,V1).
active_star_2(M1,N1,W1,W1) :- 
    [M1,N1] \= [H1,I1].
active_star_2(X1,Y1,V1,Z1) :- 
    dual(2,active(X1,Y1),V1,Z1).
not_active(M1,N1,U1,Z1) :- 
    (copy_term([M1,N1],[S1,T1]),active_star_1(S1,T1,U1,V1),copy_term([M1,N1],[X1,Y1]),active_star_2(X1,Y1,V1,Z1)).

normally_active_ab(A2,B2,C2) :- 
    (not_absent(B2,[],D2),reaction(rct(E2,B2),D2,F2),active(A2,E2,F2,C2)).
:- table normally_active_ab(_,_,po(subset/2)).
normally_active(G2,H2,I2,J2) :- 
    (normally_active_ab(G2,H2,K2),produce_context(J2,I2,K2)).
normally_active_star_1(G2,H2,L2,L2) :- 
    [G2,H2] \= [A2,B2].
normally_active_star_1(M2,N2,O2,P2) :- 
    dual(1,normally_active(M2,N2),O2,P2).
not_normally_active(G2,H2,O2,P2) :- 
    (copy_term([G2,H2],[M2,N2]),normally_active_star_1(M2,N2,O2,P2)).

inhibited_ab(Q2,R2,S2) :- 
    (not_absent(R2,[],T2),externally_inhibited(Q2,R2,T2,S2)).
inhibited_ab(U2,V2,W2) :- 
    (not_absent(V2,[],X2),normally_inhibited(U2,V2,X2,W2)).
:- table inhibited_ab(_,_,po(subset/2)).
inhibited(Y2,Z2,A3,B3) :- 
    (inhibited_ab(Y2,Z2,C3),produce_context(B3,A3,C3)).
inhibited_star_1(Y2,Z2,D3,D3) :- 
    [Y2,Z2] \= [Q2,R2].
inhibited_star_1(E3,F3,G3,H3) :- 
    dual(1,inhibited(E3,F3),G3,H3).
inhibited_star_2(Y2,Z2,I3,I3) :- 
    [Y2,Z2] \= [U2,V2].
inhibited_star_2(J3,K3,H3,L3) :- 
    dual(2,inhibited(J3,K3),H3,L3).
not_inhibited(Y2,Z2,G3,L3) :- 
    (copy_term([Y2,Z2],[E3,F3]),inhibited_star_1(E3,F3,G3,H3),copy_term([Y2,Z2],[J3,K3]),inhibited_star_2(J3,K3,H3,L3)).

normally_inhibited_ab(M3,N3,O3) :- 
    (not_absent(N3,[],P3),inhibitor(N3,Q3,P3,R3),active(M3,Q3,R3,O3)).
:- table normally_inhibited_ab(_,_,po(subset/2)).
normally_inhibited(S3,T3,U3,V3) :- 
    (normally_inhibited_ab(S3,T3,W3),produce_context(V3,U3,W3)).
normally_inhibited_star_1(S3,T3,X3,X3) :- 
    [S3,T3] \= [M3,N3].
normally_inhibited_star_1(Y3,Z3,A4,B4) :- 
    dual(1,normally_inhibited(Y3,Z3),A4,B4).
not_normally_inhibited(S3,T3,A4,B4) :- 
    (copy_term([S3,T3],[Y3,Z3]),normally_inhibited_star_1(Y3,Z3,A4,B4)).

inactive_ab(C4,D4,E4) :- 
    (not_active(C4,D4,[],F4),reaction(rct(G4,D4),F4,H4),inactive(C4,G4,H4,E4)).
inactive_ab(I4,J4,K4) :- 
    inhibited(I4,J4,[],K4).
:- table inactive_ab(_,_,po(subset/2)).
inactive(L4,M4,N4,O4) :- 
    (inactive_ab(L4,M4,P4),produce_context(O4,N4,P4)).
inactive_star_1(L4,M4,Q4,Q4) :- 
    [L4,M4] \= [C4,D4].
inactive_star_1(R4,S4,T4,U4) :- 
    dual(1,inactive(R4,S4),T4,U4).
inactive_star_2(L4,M4,V4,V4) :- 
    [L4,M4] \= [I4,J4].
inactive_star_2(W4,X4,U4,Y4) :- 
    dual(2,inactive(W4,X4),U4,Y4).
not_inactive(L4,M4,T4,Y4) :- 
    (copy_term([L4,M4],[R4,S4]),inactive_star_1(R4,S4,T4,U4),copy_term([L4,M4],[W4,X4]),inactive_star_2(W4,X4,U4,Y4)).

externally_induced_ab(Z4,A5,B5) :- 
    drug_active(Z4,A5,[],B5).
:- table externally_induced_ab(_,_,po(subset/2)).
externally_induced(C5,D5,E5,F5) :- 
    (externally_induced_ab(C5,D5,G5),produce_context(F5,E5,G5)).
externally_induced_star_1(C5,D5,H5,H5) :- 
    [C5,D5] \= [Z4,A5].
externally_induced_star_1(I5,J5,K5,L5) :- 
    dual(1,externally_induced(I5,J5),K5,L5).
not_externally_induced(C5,D5,K5,L5) :- 
    (copy_term([C5,D5],[I5,J5]),externally_induced_star_1(I5,J5,K5,L5)).

drug_active_ab(M5,N5,O5) :- 
    (exists(M5,P5,[drug_induced(M5,P5,N5)],Q5),possible_drug_effect(P5,induce,N5,Q5,O5)).
:- table drug_active_ab(_,_,po(subset/2)).
drug_active(R5,S5,T5,U5) :- 
    (drug_active_ab(R5,S5,V5),produce_context(U5,T5,V5)).
drug_active_star_1(R5,S5,W5,W5) :- 
    [R5,S5] \= [M5,N5].
drug_active_star_1(X5,Y5,Z5,A6) :- 
    dual(1,drug_active(X5,Y5),Z5,A6).
not_drug_active(R5,S5,Z5,A6) :- 
    (copy_term([R5,S5],[X5,Y5]),drug_active_star_1(X5,Y5,Z5,A6)).

externally_inhibited_ab(B6,C6,D6) :- 
    (exists(B6,E6,[drug_inhibited(B6,E6,C6)],F6),possible_drug_effect(E6,inhibit,C6,F6,D6)).
:- table externally_inhibited_ab(_,_,po(subset/2)).
externally_inhibited(G6,H6,I6,J6) :- 
    (externally_inhibited_ab(G6,H6,K6),produce_context(J6,I6,K6)).
externally_inhibited_star_1(G6,H6,L6,L6) :- 
    [G6,H6] \= [B6,C6].
externally_inhibited_star_1(M6,N6,O6,P6) :- 
    dual(1,externally_inhibited(M6,N6),O6,P6).
not_externally_inhibited(G6,H6,O6,P6) :- 
    (copy_term([G6,H6],[M6,N6]),externally_inhibited_star_1(M6,N6,O6,P6)).

false_star_1(Q6,R6) :- 
    dual(1,false,Q6,R6).
false_star_2(R6,S6) :- 
    dual(2,false,R6,S6).
not_false(Q6,S6) :- 
    (true,false_star_1(Q6,R6),true,false_star_2(R6,S6)).

drug_induced(T6,U6,V6,W6,X6) :- 
    insert_abducible(drug_induced(T6,U6,V6),W6,X6).
drug_induced_star(Y6,Z6,A7,B7,C7) :- 
    insert_abducible(not drug_induced(Y6,Z6,A7),B7,C7).
drug_inhibited(D7,E7,F7,G7,H7) :- 
    insert_abducible(drug_inhibited(D7,E7,F7),G7,H7).
drug_inhibited_star(I7,J7,K7,L7,M7) :- 
    insert_abducible(not drug_inhibited(I7,J7,K7),L7,M7).
