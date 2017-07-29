p_ab(2,[a(2)]).
p_ab(1,[a(1)]).
:- table p_ab/2.
p(A,B,C) :- 
    (p_ab(A,D),produce_context(C,B,D)).
p_star_1(A,E,E) :- 
    [A] \= [2].
p_star_1(F,G,H) :- 
    dual(1,p(F),G,H).
p_star_2(A,I,I) :- 
    [A] \= [1].
p_star_2(J,H,K) :- 
    dual(2,p(J),H,K).
not_p(A,G,K) :- 
    (copy_term([A],[F]),p_star_1(F,G,H),copy_term([A],[J]),p_star_2(J,H,K)).

not_false(L,L).

a(M,N,O) :- 
    insert_abducible(a(M),N,O).
a_star(P,Q,R) :- 
    insert_abducible(not a(P),Q,R).
