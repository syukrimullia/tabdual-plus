c(1).
c(2).

c(A,B,B) :- 
    c(A).
not_c(A,C,C) :- 
    not c(A).

false_star_1(D,E) :- 
    dual(1,false,D,E).
not_false(D,E) :- 
    (true,false_star_1(D,E)).

p_ab(F,G) :- 
    c(F,[a(F)],G).
p_ab(H,I) :- 
    c(H,[a(H),b(H)],I).
:- table p_ab/2.
p(J,K,L) :- 
    (p_ab(J,M),produce_context(L,K,M)).
p_star_1(J,N,N) :- 
    [J] \= [F].
p_star_1(O,P,Q) :- 
    dual(1,p(O),P,Q).
p_star_2(J,R,R) :- 
    [J] \= [H].
p_star_2(S,Q,T) :- 
    dual(2,p(S),Q,T).
not_p(J,P,T) :- 
    (copy_term([J],[O]),p_star_1(O,P,Q),copy_term([J],[S]),p_star_2(S,Q,T)).

a(U,V,W) :- 
    insert_abducible(a(U),V,W).
a_star(X,Y,Z) :- 
    insert_abducible(not a(X),Y,Z).
b(A1,B1,C1) :- 
    insert_abducible(b(A1),B1,C1).
b_star(D1,E1,F1) :- 
    insert_abducible(not b(D1),E1,F1).
