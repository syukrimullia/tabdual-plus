% Berkas berisi predikat-predikat sistem dan
% predikat-predikat tambahan lainnya.

% Import
:- import append/3, member/2, length/2, between/3 from basics.
:- import trie_intern/2, trie_interned/2, trie_property/2 from intern.
:- import concat_atom/2 from string.

% Predikat sistem produce_context/3
produce_context(I, I, []) :- !.
produce_context(E, [], E) :- !.
produce_context(O, I, [E|EE]) :-
	member(E, I), !,
	produce_context(O, I, EE).
produce_context(O, I, [E|EE]) :-
	negate(E, NE),
	\+ member(NE, I),
	append(I, [E], IE),
	produce_context(O, IE, EE).

% Predikat sistem insert_abducible/3
insert_abducible(A, I, I) :-
	member(A, I), !.
insert_abducible(A, I, O) :-
	negate(A, NA),
	\+ member(NA, I),
	append(I, [A], O).

% Predikat sistem dual/4
dual(N, P, I, O) :-
	trie_property(T, alias(dual)),
	create_generic(P, GenP),
	dual(T, N, P, GenP, I, O).

dual(T, N, P, GenP, I, O) :-
	trie_interned(d(N, GenP, Dual, _, Positives), T),
	call_dual(P, GenP, I, O, Dual, Positives).
dual(T, N, P, GenP, I, O) :-
	current_pos(T, N, GenP, Pos, Positives),
	dualize(Pos, Dual, NextPos),
	store_dual(T, N, GenP, Dual, NextPos, Positives),
	call_dual(P, GenP, I, O, Dual, Positives).

current_pos(T, N, P, Pos, Positives) :-
	trie_interned(d(N, P, _, LastPos, _), T), !,
	get_last_positions(LastPos, Pos),
	find_nth_rules(P, N, Rules),
	get_positives(Rules, Pos, Positives).
current_pos(_, N, P, Pos, Positives) :-
	find_nth_rules(P, N, Rules),
	get_last_positions(Rules, Pos),
	get_positives(Rules, Pos, Positives).

dualize([Pos|Poss], Dual, Poss) :-
	dualize(Pos, Dual).

dualize((not P), P) :- !.
dualize(P, PStar) :-
	is_abducible(P), !, 
	add_star_postfix(P, PStar).
dualize(P, NotP) :-
	add_not_prefix(P, NotP).

store_dual(T, N, P, Dual, Pos, Positives) :-
	trie_intern(d(N, P, Dual, Pos, Positives), T).

call_dual(P, GenP, I, O, D, Positives) :-
	instantiate_generic(P, GenP),
	list_to_conj(Positives, PositConj),
	build_context(PositConj, ProPositives, I, T),
	D =.. [Sym|Arg],
	append(Arg, [T, O], DualArgs),
	Dual =.. [Sym|DualArgs],
	ProPositives,
	Dual.

% Subset
subseq([], []).
subseq([], [_|_]).
subseq([X|Xs], [X|Ys] ) :- 
	subseq(Xs, Ys).
subseq([X|Xs], [_|Ys] ) :- 
	append(_, [X|Zs], Ys), 
	subseq(Xs, Zs).

% ---- Predikat bantuan lainnnya ---- %
find_rules(H, R) :-
	findall(rule(H, B), clause(rule(H, B), true), R).

find_rules(H, R, N) :-
	findall(rule(H, B), clause(rule(H, B, N), true), R).

find_nth_rules(H, N, RL) :-
	clause(rule(H, B, N), true),
	conj_to_list(B, RL).

negate((not A),A) :- !.
negate(A,(not A)).

check_and_add_not_prefix((not H), NH) :- !,
	add_not_prefix(H, NH).
check_and_add_not_prefix(H, H).

add_not_prefix(H, NA) :-
	H =.. [S|A],
	concat_atom(['not_', S], NS),
	NA =.. [NS|A].

add_ab_postfix(H, ABH) :-
	H =.. [S|A],
	concat_atom([S, '_ab'], NS),
	ABH =.. [NS|A].

add_star_postfix(H, AS) :-
	H =.. [S|A],
	concat_atom([S, '_star'], NS),
	AS =.. [NS|A].

add_n_postfix(H, N, AS) :-
	H =.. [S|A],
	concat_atom([S,'_', N], NS),
	AS =.. [NS|A].

get_abducibles(A) :-
	abds(A), !.
get_abducibles([]).

is_abducible((not Ab)) :-
	is_abducible(Ab), !.
is_abducible(Ab) :- 
	functor(Ab, S, A), 
	get_abducibles(Abds), 
	member(S/A, Abds).
	
get_last_positions(List, Pos) :-
	length(List, Len),
	between(0, Len, N),
	PosSize is Len - N,
	sublist(List, N, PosSize, Pos).

get_positives(Pos, Pos, []) :- !.
get_positives([(not _)|Rules], Pos, Positives) :- !,
	get_positives(Rules, Pos, Positives).
get_positives([R|Rules], Pos, [R|Positives]) :-
	get_positives(Rules, Pos, Positives).

% process abductive contexts transition
build_context(true, true, I, I) :- !.
build_context((B, BB), (ProB, ProBB), I, O) :- !,
	build_context_literal(B, ProB, I, IO),
	build_context(BB, ProBB, IO, O).
build_context(B, ProB, I, O) :-
	build_context_literal(B, ProB, I, O).

build_context_literal(true, true, I, I) :- !.
build_context_literal(L, ProL, I, O) :-
	build_context_atom(L, ProL, I, O).

build_context_atom(A, ProA, I, O) :-
	A =.. [S|AR],
	append(AR, [I,O], NewAR),
	ProA =.. [S|NewAR].

create_generic(false, false) :- !.
create_generic(P, GenP) :-
	functor(P, Sym, Arity),
	length(NewArgs, Arity),
	GenP =.. [Sym|NewArgs].

instantiate_generic(false, false) :- !.
instantiate_generic(P, GenP) :-
	P =.. [_|ArgP],
	GenP =.. [_|ArgGenP],
	instantiate(ArgP, ArgGenP).

instantiate([], []).
instantiate([P1|PP1], [P2|PP2]) :-
	P2 = P1,
	instantiate(PP1, PP2).

conj_to_list(','(A, B), [A|B1]) :- !, 
	conj_to_list(B, B1).
conj_to_list(A, [A]).

list_to_conj([], true).
list_to_conj([A], A) :- !.
list_to_conj([A|L], (A, B)) :- list_to_conj(L, B).

sublist(List, Offset, Length, Sublist):-
  	length(Prefix, Offset),
  	append(Prefix, Rest, List),
  	length(Sublist, Length),
  	append(Sublist, _, Rest).

subset([], _).
subset([L|L1], L2):-
	member(L, L2),
	subset(L1, L2).

powerset(X,Y) :- 
	bagof(S, subseq(S,X), Y).
