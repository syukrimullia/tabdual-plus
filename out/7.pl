p_ab([a1]).
p_ab([a2]).
p_ab([a3]).
p_ab([a1,a2]).
p_ab([a2,a3]).
p_ab([a1,a3]).
p_ab([a1,a2,a3]).
:- table p_ab/1.
p(A,B) :- 
    (p_ab(C),produce_context(B,A,C)).
p_star_1(D,E) :- 
    dual(1,p,D,E).
p_star_2(E,F) :- 
    dual(2,p,E,F).
p_star_3(F,G) :- 
    dual(3,p,F,G).
p_star_4(G,H) :- 
    dual(4,p,G,H).
p_star_5(H,I) :- 
    dual(5,p,H,I).
p_star_6(I,J) :- 
    dual(6,p,I,J).
p_star_7(J,K) :- 
    dual(7,p,J,K).
not_p(D,K) :- 
    (true,p_star_1(D,E),true,p_star_2(E,F),true,p_star_3(F,G),true,p_star_4(G,H),true,p_star_5(H,I),true,p_star_6(I,J),true,p_star_7(J,K)).

not_false(L,L).

a1(M,N) :- 
    insert_abducible(a1,M,N).
a1_star(O,P) :- 
    insert_abducible(not a1,O,P).
a2(Q,R) :- 
    insert_abducible(a2,Q,R).
a2_star(S,T) :- 
    insert_abducible(not a2,S,T).
a3(U,V) :- 
    insert_abducible(a3,U,V).
a3_star(W,X) :- 
    insert_abducible(not a3,W,X).
