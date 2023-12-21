% Laws
name(nif).
name(naf).
name(nuf).
name(wolf).

mark(fauna).
mark(flora).
mark(sport).
mark(space).

markerror(wolf, fauna).

table(wolf, naf).
table(naf, nif).
table(nif, nuf).

% Rules
rule_1(Y, A) :- not(markerror(W, A)),
    W = wolf, Y = nif, A = fauna.
rule_2(Y, D) :- table(Y, Y),
    Y = nif, D = space.
rule_3(X, D) :- not(rule_2(Y, D)), table(X, Y),
    X = naf, Y = nif, D = space.
rule_4(Z, C) :- not(mark(C)),
    Z = nuf, C = sport.
rule_5(Z, B) :-
    markerror(W, A),
    rule_3(X, D),
    not(rule_4(Z, C)),
    W = wolf, X = naf, Z = nuf, A = fauna, B = flora, C = sport, D = space.
rule_6(Y, B) :- not(rule_5(Z, B)), Y = nif, Z = nuf, B = flora.
rule_7(Y, C) :-
    not(rule_1(Y, A)),
    not(rule_2(Y, D)),
    not(rule_6(Y, B)),
    Y = nif, A = fauna, B = flora, C = sport, D = space.

whatismark(Y, A) :- rule_1(Y, A), Y = nif, A = fauna.
whatismark(Y, D) :- rule_2(Y, D), Y = nif, D = space.
whatismark(Y, B) :- rule_6(Y, B), Y = nif, B = flora.
whatismark(Y, C) :- rule_7(Y, C), Y = nif, C = sport.

% Answer:
% ?- whatismark(nif, X)
