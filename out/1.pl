q_ab(2,[]).
q_ab(1,[]).
:- table q_ab/2.
q(A,B,C) :- 
    (q_ab(A,D),produce_context(C,B,D)).
q_star_1(A,E,E) :- 
    [A] \= [2].
q_star_2(A,F,F) :- 
    [A] \= [1].
not_q(A,G,H) :- 
    (copy_term([A],[I]),q_star_1(I,G,J),copy_term([A],[K]),q_star_2(K,J,H)).

query_ab(L) :- 
    q(M,[a(M)],L).
:- table query_ab/1.
query(N,O) :- 
    (query_ab(P),produce_context(O,N,P)).
query_star_1(Q,R) :- 
    dual(1,query,Q,R).
not_query(Q,R) :- 
    (true,query_star_1(Q,R)).

not_false(S,S).

a(T,U,V) :- 
    insert_abducible(a(T),U,V).
a_star(W,X,Y) :- 
    insert_abducible(not a(W),X,Y).
