parent(jose, maria).   % 1                 
parent(jose, pedro).   % 2
parent(maria, luis).   % 3
parent(maria, afonso). % 4
parent(pedro, ana).    % 5

male(jose).
male(pedro).
male(luis).
male(afonso).
female(maria).
female(ana).

brother(X,Y) :- parent(Z,X), parent(Z,Y), male(X), not(X = Y).
cousin(X,Y) :- parent(W,Z), parent(W,K), not(Z = K), parent(Z,X), parent(K,Y).
grandson(X, Y) :- parent(Y,W), parent(W,X), male(X).
descendent(X,Y) :- parent(Y,X).
descendent(X,Y) :- parent(Z,X), descendent(Z,Y).