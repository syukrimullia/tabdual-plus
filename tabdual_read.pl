% Berkas berisi predikat-predikat untuk membaca

% Import
:- import append/3 from basics.

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
	assert_body(B),
	assert_rule(H, B).

% Membaca fakta H
read_rule(H) :-
	assert_has_rules(H),
	assert_rule(H, true).

% ---- Asserting ---- %
assert_rule(H) :- 
	assert(rule((H, true))).
assert_rule(H, B) :- 
	assert(rule(H, B)).

assert_body((B, BB)) :- !,
	assert_has_pred(B),
	assert_body(BB).
assert_body(B) :-
	assert_has_pred(B).

assert_abducible(A) :- 
	assert(abds(A)).

assert_if_not_exist(X) :- 
	X, !.
assert_if_not_exist(X) :- 
	assert(X).

assert_has_pred(B) :-
	is_abducible(B), !.
assert_has_pred(B) :-
	find_predicate(B, BB),
	assert_if_not_exist(has_pred(BB)).

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