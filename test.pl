%-- Make a soduku solver to work on 9 X 9 puzzles

%-- Rule one - board should be a solution
%-- Im going for a lists as row so you provide 9 lists with 9 rows.

valid_numbers([],[]).
valid_numbers([Row|Remaining],[Row|Validated]) :-
    fd_domain(Row, 1, 9),
    valid_numbers(Remaining, Validated).

valid_row([],[]).
valid_row([Row|Remaining],[Row|Validated]) :- 
    fd_all_different(Row),
    valid_row(Remaining, Validated).
    
column_builder([],[],[]).
column_builder([[Head|Rest]|Tail],[Head|SameCol],[]) :- 
   Rest = [],
   column_builder(Tail, SameCol, LeftOver).
column_builder([[Head|Rest]|Tail],[Head|SameCol],[Rest|LeftOver]) :- 
   column_builder(Tail, SameCol, LeftOver).

valid_col([],[]).
valid_col(Rows,[Col|Validated]) :- 
    column_builder(Rows, Col, Remaining),
    fd_all_different(Col),
    valid_col(Remaining, Validated).

box_rule([]).
box_rule([Box|[Box2|[Box3|Remaining]]]) :-
     Box2 = [],
     Box3 = [],
     Box = [],
     box_rule(Remaining).
box_rule([Box|[Box2|[Box3|Remaining]]]) :-
     append([First, Second, Third], Remaining1, Box),
     append([Fourth,Fifth, Sixth], Remaining2, Box2),
     append([Seventh, Eight, Nineth], Remaining3, Box3),
     fd_all_different([First, Second, Third, Fourth, Fifth, Sixth, Seventh, Eight, Nineth]),
     boxRule([Remaining1|[Remaining2|[Remaining3|Remaining]]]).

%-- get the same index of every row and put them into a new array. ALl values at the same index should be true.
    
sudoku(Board, Solution) :- 
    Board = Solution,
    Board = [[_,_,_,_,_,_,_,_,_],
	     [_,_,_,_,_,_,_,_,_],
	     [_,_,_,_,_,_,_,_,_],
	     [_,_,_,_,_,_,_,_,_],
	     [_,_,_,_,_,_,_,_,_],
	     [_,_,_,_,_,_,_,_,_],
	     [_,_,_,_,_,_,_,_,_],
	     [_,_,_,_,_,_,_,_,_],
	     [_,_,_,_,_,_,_,_,_]],
    length(Board, 9),
    valid_numbers(Board, Solution).
    valid_row(Board, Solution),
    valid_col(Board, Solution).



