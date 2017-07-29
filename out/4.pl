q(1).
q(2).

q(A,B,B) :- 
    q(A).
not_q(A,C,C) :- 
    not q(A).

r_ab(D,[a(D)]).
:- table r_ab/2.
r(E,F,G) :- 
    (r_ab(E,H),produce_context(G,F,H)).
r_star_1(E,I,I) :- 
    [E] \= [D].
r_star_1(J,K,L) :- 
    dual(1,r(J),K,L).
not_r(E,K,L) :- 
    (copy_term([E],[J]),r_star_1(J,K,L)).

false_star_1(M,N) :- 
    dual(1,false,M,N).
not_false(M,N) :- 
    (true,false_star_1(M,N)).

a(O,P,Q) :- 
    insert_abducible(a(O),P,Q).
a_star(R,S,T) :- 
    insert_abducible(not a(R),S,T).
