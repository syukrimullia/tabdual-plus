% Program utama TABDUAL+. Seluruh implementasi utama
% terdapat berkas ini.

% Import predikat-predikat built-in
:- import append/3, member/2, length/2, between/3 from basics.
:- import concat_atom/2 from string.
:- import trie_create/2, trie_drop/1 from intern.

% Definisi operator
:- op(950, fy, not).
:- op(1110, fy, '<-').
:- op(1110, xfy, '<-').

% Deklarasi predikat dinamis
:- dynamic has_rules/1, rule/2, rule/3, has_pred/1, abds/1, numvars/1.

% Directive lainnya
:- consult_files, retractall(mode(_)), assert(mode(table)), clear.

% Melihat mode yang sedang aktif
mode :-
	mode(Mode),
	write_ln(['Current mode: ', Mode]).

% Beralih ke mode no-tabling 
switch_mode(n) :- !,
	retractall(mode(_)),
	assert(mode(notable)).
% Beralih ke mode tabling
switch_mode(t) :- !,
	retractall(mode(_)),
	assert(mode(table)).
% Beralih ke mode answer subsumption
switch_mode(s) :- !,
	retractall(mode(_)),
	assert(mode(subsumed)).
switch_mode(Mode) :-
	write_ln(['Unknown mode: ', Mode, '. Only n (\'normal\') and s (\'subsumed\') are available.']),
	fail.

% Predikat top-level: transform(InputProgram)
transform(Filename) :-
	see_input_file(Filename),
	tell_output_file(Filename),
	read_input_program,
	transform,
	seen,
	told.

% Predikat top-level: load(OutputProgram)
load(F) :-
	concat_atom(['out/', F, '.pl'], FOut),
	consult(FOut).

% Predikat top-level untuk abduction: 
% ask(Query, Output) dan ask(Query, Input, Output)
ask(Q, O) :- ask(Q, [], O).
ask(Q, I, O) :-
	transform_and_call_query(Q, I, O).
% Tambahan ask/1
ask(Q) :- 
	findall(O, ask(Q,O), Sol),
	write_solution(Sol,1).

% ---- Mendapatkan seluruh solusi ---- %
checksol(Q) :- findall(Sol, ask(Q,Sol), L), \+ empty(L).
empty([]).

% ---- Transoformasi query ---- %
transform_and_call_query(Q, I, O) :-
	process_body_apost(Q, ProQ, I, T),
	NF =.. ['not_false'|[T,O]],
	ProQ, NF.
% ---- End of transoformasi query ---- %

% Consult berkas TABDUAL+ lainnya
consult_files :-
	consult('tabdual_write.pl'),
	consult('tabdual_read.pl'),
	consult('tabdual_system.pl').

% Bersih-bersih
clear :-
	retractall(has_rules(_)),
	retractall(rule(_, _)),
	retractall(rule(_, _, _)), 
	retractall(abds(_)),
	retractall(has_pred(_)),
	retractall(numvars(_)),
	assert(numvars(0)),
	trie_drop(dual), !,
	trie_create(_,[type(prge), alias(dual)]).
clear :-
	trie_create(_,[type(prge), alias(dual)]).

% Atur input stream
see_input_file(F) :-
	concat_atom(['in/', F, '.ab'], FIn),
	see(FIn).

% Atur output stream
tell_output_file(F) :-
	concat_atom(['out/', F, '.pl'], FAb),
	tell(FAb).

% ---- Membaca program input ----
read_input_program :-
	clear,
	read_rules,
	add_indices.

read_rules :-
	read(C),
	(
		C = end_of_file 
	-> 
		true
	;
		C = beginProlog
	->
		read_just_facts
	;
		read_rule(C), 
		read_rules
	).

read_just_facts :-
	read(C),
	(
		C = endProlog
	->
		nl,
		transform_just_fact,
		nl,
		read_rules
	;
		read_rule(C),
		write_rule(C, true), nl,
		read_just_facts
	).
% ---- End of membaca program input ---- %

% Menambahkan indeks ke rule/2
add_indices :-
	retract(has_rules(H)),
	find_rules(H, R),
	add_indices_to_rule(R, 1),
	add_indices,
	assert(has_rules(H)).
add_indices.

add_indices_to_rule([], _).
add_indices_to_rule([rule(H,B)|RR], N) :-
	retract(rule(H,B)),
	assert(rule(H,B,N)),
	NN is N + 1,
	add_indices_to_rule(RR, NN).

readd_rules([]).
readd_rules([R|RR]) :-
	assert(has_rules(R)),
	readd_rules(RR).

% Transformasi
transform :- 
	transform_per_rule,
	transform_pred_without_rules,
	transform_if_no_ic,
	transform_abducibles.

% ---- Membentuk ransformasi t', t+, t-, dan t* (by need) ---- %
transform_per_rule :-
	retract(has_rules(H)),
	remove_has_pred(H),
	find_rules(H, R, _),
	generate_apostrophe_rules(R),
	generate_positive_rules(H),
	generate_dual_rules(H, R),
	nl,
	transform_per_rule.
transform_per_rule.

remove_has_pred(P) :-
	retract(has_pred(P)), !.
remove_has_pred(_).

% ---- Transformasi t` ---- %
generate_apostrophe_rules([]).
generate_apostrophe_rules([R|RR]) :-
	generate_apostrophe_rule(R),
	generate_apostrophe_rules(RR).

generate_apostrophe_rule(rule(false, _)).
generate_apostrophe_rule(rule(H, B)) :-
	conj_to_list(B, BList),
	split_ar_br(BList, Br, Ar),
	list_to_conj(Br, BrConj),
	process_body_apost(BrConj, ProBr, Ar, O),
	process_head_apost(H, ProH, O),
	write_rule(ProH, ProBr), 
	nl.

split_ar_br([], [], []).
split_ar_br([B|BB], Br, [B|Ar]) :-
	is_abducible(B), !,
	split_ar_br(BB, Br, Ar).
split_ar_br([B|BB],[B|Br], Ar) :-
	split_ar_br(BB, Br, Ar).

process_head_apost(H, ProH, O) :-
	add_ab_postfix(H, HAb),
	HAb =.. [S|AR],
	append(AR, [O], NewAR),
	ProH =.. [S|NewAR].

process_body_apost((B, BB), (ProB, ProBB), I, O) :- !,
	process_literal_apost(B, ProB, I, IO),
	process_body_apost(BB, ProBB, IO, O).
process_body_apost(B, ProB, I, O) :-
	process_literal_apost(B, ProB, I, O).

process_literal_apost(true, true, I, I) :- !.
process_literal_apost(L, ProL, I, O) :-
	process_atom_apost(L, ProL, I, O).

process_atom_apost(A, ProA, I, O) :-
	check_and_add_not_prefix(A, NA),
	NA =.. [S|AR],
	append(AR, [I,O], NewAR),
	ProA =.. [S|NewAR].
% ---- End of transformasi t` ---- %

% ---- Transformasi t+ ---- %
generate_positive_rules(false) :- !.
generate_positive_rules(H) :-
	process_atom_apost(H, ProH, I, O),
	process_body_pos(H, ProB, I, O),
	write_rule(ProH, ProB),
	nl.

process_body_pos(H, (ProH, ProB), I, O) :-
	process_head_apost(H, ProH, E),
	write_table(ProH),
	ProB =.. ['produce_context'|[O,I,E]].
% ---- End of transformasi t+ ---- %

% ---- Transformasi t- (first layer dual rule)---- %
generate_dual_rules(H, R) :-
	process_body_neg(H, R, ProB, I, O, 1),
	process_head_neg(H, NH, I, O),
	write_rule(NH, ProB),
	nl.

process_head_neg(H, NHS, I, O) :-
	add_not_prefix(H, NH),
	NH =.. [S|AR],
	append(AR, [I,O], NewAR),
	NHS =.. [S|NewAR].

process_body_neg(_, [], _, _, _, _).
process_body_neg(H, [rule(R,B)|[]], (CT, ProB), I, O, N) :-
	process_literal_neg(H, ProB, CT, I, O, N, R, B).
process_body_neg(H, [rule(R,B)|RR], (CT, ProB, ProBB), I, O, N) :-
	process_literal_neg(H, ProB, CT, I, IO, N, R, B),
	NN is N + 1,
	process_body_neg(H, RR, ProBB, IO, O, NN).

process_literal_neg(true, true, _, I, I, _, _, _) :- !.
process_literal_neg(L, ProL, CT, I, O, N, R, B) :-
	process_atom_neg(L, ProL, CT, I, O, N, R, B).

process_atom_neg(A, ProA, CT, I, O, N, R, B) :-
	add_star_postfix(A, Astar),
	add_n_postfix(Astar, N, AStarN),
	AStarN =.. [S|Arg],
	length(Arg, L),
	generate_first_star_rule(R, Arg, N),
	(
		L == 0
	->
		CT =.. ['true'],
		ProA =.. [S|[I,O]],
		generate_dual_rules(ProA, B, N, A, [], DualA, I, O)
	;
		length(ArgCopy, L),
		CT =.. ['copy_term'|[Arg, ArgCopy]],
		append(ArgCopy, [I,O], NewAR),
		ProA =.. [S|NewAR],
		generate_dual_rules(ProA, B, N, A, ArgCopy, DualA, I, O)
	).

generate_dual_rules(_, true, _, _, _, _, _, _) :- !.
generate_dual_rules(ProA, _, N, R, ArgCopy, DualA, I, O) :-
	R =.. [S|_],
	NewR =.. [S|ArgCopy],
	DualA =.. ['dual'|[N, NewR, I, O]],
	write_rule(ProA, DualA), nl.
% ---- End of transformasi t- (first layer dual rule)---- %

% ---- Transformasi t* (second layer dual rule)---- %
generate_first_star_rule(R, [], N) :- !,
	R =.. [S|_],
	append([], [I,I], Arg),
	RII =.. [S|Arg],
	B =.. ['false'],
	add_star_postfix(RII, RStar),
	add_n_postfix(RStar, N, RStarN),
	write_rule(RStarN, B),
	nl.
generate_first_star_rule(R, X, N) :-
	R =.. [S|T],
	append(X, [I,I], Arg),
	RII =.. [S|Arg],
	B =.. ['\=', X, T],
	add_star_postfix(RII, RStar),
	add_n_postfix(RStar, N, RStarN),
	write_rule(RStarN, B),
	nl.
% ---- End of transformasi t* (second layer dual rule)---- %

transform_pred_without_rules :-
	retract(has_pred(R)),
	functor(R, N, A),
	functor(GenR, N, A),
	GenR =.. [GenN|T],
	append(T, [I,I], TT),
	GenRTT =.. [GenN|TT],
	add_not_prefix(GenRTT, NotGenR),
	write_rule(NotGenR, true),
	nl,
	transform_pred_without_rules.
transform_pred_without_rules.

% ---- Transformasi jika tidak ada IC ---- %
transform_if_no_ic :-
	find_rules(false, R, _),
	length(R, 0), !,
	generate_dual_rules_no_ic.
transform_if_no_ic.

generate_dual_rules_no_ic :-
	NF =.. ['not_false'|[I,I]],
	write_rule(NF, true),
	nl, nl.
% ---- End of transformasi jika tidak ada IC ---- %

% ---- Transformasi to ---- %
transform_abducibles :-
	get_abducibles(A),
	generate_abd_rules(A).

generate_abd_rules([]).
generate_abd_rules([A|AA]) :-
	transform_abducible(A),
	transform_abducible(not A),
	generate_abd_rules(AA).

transform_abducible((not A)) :-
	A =.. [_,S,AR|_],
	functor(AP, S, AR),
	process_head_neg_abd(AP, ProAH, I, O),
	process_body_abd((not AP), ProAB, I, O),
	write_rule(ProAH, ProAB),
	nl.
transform_abducible(A) :-
	A =.. [_,S,AR|_],
	functor(AP, S, AR),
	process_atom_apost(AP, ProAH, I, O),
	process_body_abd(AP, ProAB, I, O),
	write_rule(ProAH, ProAB),
	nl.

process_head_neg_abd(A, ProA, I, O) :-
	add_star_postfix(A, AS),
	AS =.. [S|AR],
	append(AR, [I,O], NewAR),
	ProA =.. [S|NewAR].

process_body_abd(A, ProA, I, O) :-
	ProA =.. ['insert_abducible'|[A,I,O]].
% ---- End of transformasi to ---- %

% ---- Membentuk transformasi fakta ---- %
transform_just_fact :-
	retract(has_rules(F)),
	generate_pos_fact(F),
	generate_neg_fact(F),
	transform_just_fact.
transform_just_fact.

generate_pos_fact(F) :-
	process_head_pos_fact(F, ProF),
	write_rule(ProF, F),
	nl.

generate_neg_fact(F) :-
	process_head_neg_fact(F, ProF),
	write_rule(ProF, (not F)),
	nl.

process_head_pos_fact(F, ProF) :-
	F =.. [S|AR],
	append(AR, [I,I], NewAR),
	ProF =.. [S|NewAR].

process_head_neg_fact(F, ProF) :-
	add_not_prefix(F, NF),
	NF =.. [S|AR],
	append(AR, [I,I], NewAR),
	ProF =.. [S|NewAR].
% ---- End of membentuk transformasi fakta ---- %

% ---- Generator ---- %
maketest(N) :-
	number(N), 
	N > 0, !,
	generate_test(N).
maketest(_) :-
	write_ln(['invalid argument!']).

generate_test(Size) :-
	tell_generated_file(Size),
	findall(X, between(1, Size, X), Nums),
	generate_test_abds(Nums),
	generate_test_rules(Nums), nl,
	generate_test_q(Size),
	told.

tell_generated_file(Size) :-
	concat_atom(['in/artif_', Size , '.ab'], Fab),
	tell(Fab).

generate_test_abds(SizeList) :-
	write_test_abds(SizeList).

generate_test_rules(SizeList) :-
	powerset(SizeList, Bodies),
	write_test_rules(Bodies).

generate_test_q(Nums) :-
	write_test_q(Nums).
% ---- End of generator ---- %