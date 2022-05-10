om(dragos).
om(stefan).
om(ioana).
om(maria).
om(codrut).
om(tudor).


parinte(codrut, stefan).
parinte(maria, ioana).
parinte(dragos, maria).
parinte(tudor, dragos).


nonRelated(X, Y):- om(X), /*!, */ om(Y), parinte(X, P1), \+ parinte(Y, P1), Y \= P1 /*, !*/.

mama(X, Y):- fail.
tata(X, Y):- fail.


% unificare
% parinte(X, maria).


% functie pentru a calcula lungimea unei liste
% lungime(+Lista, -Lungime)
% +Lista este input
% -Lungime este output

lungime([], 0).
lungime([ _ | L], Len):- lungime(L, Len1), Len is Len1 + 1.

/* generare de solutii

    member(3, [1, 2, 3, 4]).
    member(X, [1, 2, 3, 4]).
*/

couple(X/Y) :- X @=< Y, !; X =< Y.
tuple(X+Y) :- X @=< Y, !; X =< Y.


/*
    my_member(+X, +L)
    sum_list(+L, -Sum)
*/

my_member(_, []):- fail.
my_member(X, [X | _]).
my_member(X, [_ | R]):- my_member(X, R). % cut ?

sum_list([], 0).
sum_list([X | R], S) :- sum_list(R, S1), S is S1 + X.