false_star_1(A,B) :- 
    dual(1,false,A,B).
not_false(A,B) :- 
    (true,false_star_1(A,B)).

r_ab(C,[a(C)]).
:- table r_ab/2.
r(D,E,F) :- 
    (r_ab(D,G),produce_context(F,E,G)).
r_star_1(D,H,H) :- 
    [D] \= [C].
r_star_1(I,J,K) :- 
    dual(1,r(I),J,K).
not_r(D,J,K) :- 
    (copy_term([D],[I]),r_star_1(I,J,K)).

q_ab(1,[]).
:- table q_ab/2.
q(L,M,N) :- 
    (q_ab(L,O),produce_context(N,M,O)).
q_star_1(L,P,P) :- 
    [L] \= [1].
not_q(L,Q,R) :- 
    (copy_term([L],[S]),q_star_1(S,Q,R)).

a(T,U,V) :- 
    insert_abducible(a(T),U,V).
a_star(W,X,Y) :- 
    insert_abducible(not a(W),X,Y).
