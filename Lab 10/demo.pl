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


nonRelated(X, Y):- om(X), !, om(Y), parinte(X, P1), \+ parinte(Y, P1), Y \= P1.


% unificare
% parinte(X, maria).


% functie pentru a calcula lungimea unei liste
% lungime(+Lista, -Lungime)X
% +Lista este input
% -Lungime este output
lungime([], 0).
lungime([_ | Rest], Len) :- lungime(Rest, Len1), Len is Len1 + 1.

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
my_member(_, []):- false.
my_member(X, [H | List]):- X == H, !; my_member(X, List), !.

sum_list([], 0).
sum_list([H | List], Sum):- sum_list(List, Sum1), Sum is H + Sum1.