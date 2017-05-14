cost([],0).
cost(potato,350).
cost(tomato,200).
cost(onion,100).
/*                */
/*               */

ing(chicken,[potato,tomato]).
ing(bread,[onion]).
ing(rice,[onion,tomato]).

/*                */
/*               */

re(tew,[abo,om,abn],[chicken,bread]).
re(mew,[zahi,fahi],[bread,ice]).
re(bew,[baba],[rice,ice]).

/*                */
/*               */

/* //////////////////////////// */

av(X,Y):-re(X,[_|_],L),member(Y,L).

/* //////////////////////////// */


/*  tcost(X,Y):-ing(X,[H|T]),cost(H,Y1), Y is Y1.  */

/*              */
/*              */


list_sum([], 0).
list_sum([X0|Xs], Res):- list_sum(Xs, Res0),!, Res is Res0 + X0.

list_prod([], 0).
list_prod([X], X).
list_prod([X0|Xs], Res):- list_prod(Xs, Res0),!,
    Res is Res0 * X0.


list_min([], 0).
list_min([X0|Xs], Res):- list_sum(Xs, Res0),!,
    Res is -( Res0 - X0).

decompose([H,T],H,T).




eve([H|T],N):-H='+',list_sum(T,N),! ;
    H='*',
    list_prod(T,N),!;
    H='-',list_min(T,N) ,!;
    H='sin', sin(T,N),!;
    H='cos',cos(T,N),!;
    H='^',decompose(T,X1,X2),pow(X1,X2,N).



















