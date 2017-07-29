% Berkas berisi predikat-predikat untuk menulis

% Import
:- import term_to_atom/3, concat_atom/2 from string.
:- import numbervars/1 from num_vars.

% Menulis rule (umum)
write_rule(H, true) :- !,	
	retract(numvars(First)),
	numbervars(H, First, Last),
	write_list([H, '.']),
	assert(numvars(Last)).
write_rule(H, B) :-
	retract(numvars(First)),
	numbervars((H, B), First, Last),
	write_list([H, ' :- ']),
	nl,
	tab(4),
	write_list([B, '.']),
	assert(numvars(Last)).

% Menulis rule abducible
write_ab_rule(H, true) :- !,	
	retract(numvars(First)),
	numbervars(H, First, Last),
	write_list([H, '.']),
	assert(numvars(Last)).
write_ab_rule(H, B) :-
	retract(numvars(First)),
	numbervars((H, B), First, Last),
	write_list([H, ' :- ']),
	nl,
	tab(4),
	write_list([B, '.']),
	assert(numvars(Last)).

% Menulis directive tabling
write_table(P) :-
	mode(table), !,
	functor(P, N, A),
	write_list([':- table ', N, '/', A, '.']),
	nl.
write_table(P) :-
	mode(subsumed), !,
	functor(P, N, A),
	write_list([':- table ', N, '(']),
	write_table_arg(A),
	write(').'),
	nl.
write_table(_).

write_table_arg(1) :- write('po(subset/2)'), !.
write_table_arg(N) :-
	write('_,'),
	N1 is N - 1,
	write_table_arg(N1).
	
% Menulis list
write_list([]).
write_list([H|T]) :- 
	write(H), 
	write_list(T).

write_ln(List) :- 
	write_list(List),
	nl.

% ---- Menulis generator ---- %
write_test_abds(List) :-
	write('abds(['),
	write_test_abds_list(List),
	write(']).'),
	nl.

write_test_abds_list([Last|[]]) :- !,
	write_list(['a', Last, '/0']).
write_test_abds_list([H|T]) :-
	write_list(['a', H, '/0,']),
	write_test_abds_list(T).

write_test_rules([]) :- !.
write_test_rules([B|Bodies]) :-
	write_test_rule(B),
	nl,
	write_test_rules(Bodies).

write_test_rule([]) :- !.
write_test_rule(Body) :-
	write('p <- '),
	write_test_rule_body(Body).

write_test_rule_body([B|[]]) :- !,
	write_list(['a', B, '.']).
write_test_rule_body([B|BB]) :-
	write_list(['a', B, ',']),
	write_test_rule_body(BB).

write_test_q(1) :- 
	write('q1 <- p.'),
	nl.
write_test_q(N) :-
	N1 is N - 1,
	write_list(['q', N, ' <- q', N1, ', p.' ]),
	nl,
	write_test_q(N1).

write_test_q_body(1) :-
	write('p.'),
	nl.
write_test_q_body(N) :-
	write('p, '),
	N1 is N - 1,
	write_test_q_body(N1).
% ---- End of menulis generator ---- %

% ---- Menulis hasil koleksi solusi ---- %
write_solutions([], _).
write_solutions([S|Sol], Num) :-
	write_ln(['(', Num, ') ', S]),
	NextNum is Num + 1,
	write_solutions(Sol, NextNum).
