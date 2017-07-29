ibudari_ab(ibu,anak,[]).
:- table ibudari_ab/3.
ibudari(A,B,C,D) :- 
    (ibudari_ab(A,B,E),produce_context(D,C,E)).
ibudari_star_1(A,B,F,F) :- 
    [A,B] \= [ibu,anak].
not_ibudari(A,B,G,H) :- 
    (copy_term([A,B],[I,J]),ibudari_star_1(I,J,G,H)).

false_star_1(K,L) :- 
    dual(1,false,K,L).
not_false(K,L) :- 
    (true,false_star_1(K,L)).

ortu_ab(M,N,[ibudari(M,N)]).
ortu_ab(O,P,[ayahdari(O,P)]).
:- table ortu_ab/3.
ortu(Q,R,S,T) :- 
    (ortu_ab(Q,R,U),produce_context(T,S,U)).
ortu_star_1(Q,R,V,V) :- 
    [Q,R] \= [M,N].
ortu_star_1(W,X,Y,Z) :- 
    dual(1,ortu(W,X),Y,Z).
ortu_star_2(Q,R,A1,A1) :- 
    [Q,R] \= [O,P].
ortu_star_2(B1,C1,Z,D1) :- 
    dual(2,ortu(B1,C1),Z,D1).
not_ortu(Q,R,Y,D1) :- 
    (copy_term([Q,R],[W,X]),ortu_star_1(W,X,Y,Z),copy_term([Q,R],[B1,C1]),ortu_star_2(B1,C1,Z,D1)).

wni_ab(E1,F1) :- 
    (ortu(G1,E1,[],H1),wni(G1,H1,F1)).
wni_ab(ibu,[]).
:- table wni_ab/2.
wni(I1,J1,K1) :- 
    (wni_ab(I1,L1),produce_context(K1,J1,L1)).
wni_star_1(I1,M1,M1) :- 
    [I1] \= [E1].
wni_star_1(N1,O1,P1) :- 
    dual(1,wni(N1),O1,P1).
wni_star_2(I1,Q1,Q1) :- 
    [I1] \= [ibu].
not_wni(I1,O1,R1) :- 
    (copy_term([I1],[N1]),wni_star_1(N1,O1,P1),copy_term([I1],[S1]),wni_star_2(S1,P1,R1)).

ibudari(T1,U1,V1,W1) :- 
    insert_abducible(ibudari(T1,U1),V1,W1).
ibudari_star(X1,Y1,Z1,A2) :- 
    insert_abducible(not ibudari(X1,Y1),Z1,A2).
ayahdari(B2,C2,D2,E2) :- 
    insert_abducible(ayahdari(B2,C2),D2,E2).
ayahdari_star(F2,G2,H2,I2) :- 
    insert_abducible(not ayahdari(F2,G2),H2,I2).
