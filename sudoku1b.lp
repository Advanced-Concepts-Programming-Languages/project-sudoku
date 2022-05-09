% INSERT NAMES AND EMAIL ADDRESSES OF YOUR GROUP MEMBERS:
%
%

#const n=2.

% HINTS:
% - For subgrid_size(s), subgrids can be identified by labels 0..s*s-1
% - A cell (x,y) can be subgridped to the subgrid labeled (((x-1)/s)*s + (y-1)/s)

% Your implementation please...

dim(1..n*n).

subgrid(X,Y,1+((X-1)/n)*n + (Y-1)/n) :- dim(X), dim(Y).

init(X,Y) :- initial(X,Y,N).

poss(X,Y,N) :- initial(X,Y,N).
poss(X,Y,D) :- dim(X), dim(Y), dim(D), not init(X,Y).

1 { sudoku(X,Y,N) : poss(X,Y,N) } 1 :- dim(X), dim(Y).
1 { sudoku(X,Y,N) : poss(X,Y,N) } 1 :- dim(X), dim(N).
1 { sudoku(X,Y,N) : poss(X,Y,N) } 1 :- dim(Y), dim(N).

:- initial(X,Y,N), not sudoku(X,Y,N).

#show sudoku/3.

