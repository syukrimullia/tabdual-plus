% Berkas berisi predikat-predikat untuk membaca

% Import
:- import append/3 from basics.
:- import write_rule/2 from write.

% Membaca abducible
read_rule(abds(A)) :- !,
	remove_old_abducibles(abds(OldA), OldA),
	append(A, OldA, NewA),
	assert_abducible(NewA).

% Membaca IC
read_rule(( <- B)) :- !,
	read_rule((false <- B)).

% Membaca rule H <- B.
read_rule((H <- B)) :- !,
	assert_has_rules(H),
	assert_rule(H, B).

% Membaca fakta H
read_rule(H) :-
	assert_has_rules(H),
	assert_rule(H, true).

% ---- Asserting ---- %
assert_rule(H) :- 
	asserta(rule((H, true))).
assert_rule(H, B) :- 
	asserta(rule(H, B)).

assert_abducible(A) :- 
	asserta(abds(A)).

assert_if_not_exist(X) :- 
	X, !.
assert_if_not_exist(X) :- 
	asserta(X).

assert_has_rules(R) :-
	find_predicate(R, RR),
	assert_if_not_exist(has_rules(RR)).
% ---- End of asserting ---- %

% Predikat pengoleksi
find_predicate(T, TT) :-
	functor(T, S, A), 
	functor(TT, S, A).

% Hapus abducible
remove_old_abducibles(A, _) :- 
	retract(A), !.
remove_old_abducibles(_, []).