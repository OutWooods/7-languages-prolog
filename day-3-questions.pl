%-- Prolog has some input/output features - find print predicates that print out variables
%-- So the more flexible seems to be format - here you can give if a template and it'll try and match the template to that output

Write(Argument).

format('%d %d %d | %d %d %d', [1,2,3,1,2,3]),

%-- Find a way to use print predicates to print only successful solutions. How do they work?
%-- if you only want it to print if its true. You just put the print after the checks. That way if its fails, they will not run.
test(X) :-
  X is 1,
  format('%d %d %d | %d %d %d', [1,2,3,1,2,3]),
  write("Hello").

%-- Make a Soduku solver to work on 9 X 9 puzzles

%-- Im going for a lists as row so you provide 9 lists with 9 rows.

%-- Rule one - only 1- 9 on the board
valid_numbers([],[]).
valid_numbers([Row|Remaining],[Row|Validated]) :-
    fd_domain(Row, 1, 9),
    valid_numbers(Remaining, Validated).

%-- Rule two - all numbers should be unique in each row
valid_rows([],[]).
valid_rows([Row|Remaining],[Row|Validated]) :-
    fd_all_different(Row),
    valid_row(Remaining, Validated).

%-- Rule three - all numbers should be unique in each column
first_value([], [], []).
first_value([[First|Rest]|Remaining], [First|FirstValues], [Rest|Tails]) :-
    first_value(Remaining, FirstValues, Tails).

valid_columns([[],[],[],[],[],[],[],[],[]], []).
valid_columns(Board, [Column|Columns]) :-
    first_value(Board, Column, Remaining),
    fd_all_different(Column),
    valid_column(Remaining, Columns).

%-- Rule four - all numbers should be unique in each 3x3 box
valid_boxes([]).
valid_boxes([First, Second, Third|Rest]) :-
    First = [],
    first_3(Rest, Remaining).
valid_boxes([First,Second,Third|Rest]) :-
    append([A,B,C], Rest1, First),
    append([D,E,F], Rest2, Second),
    append([G,H,I], Rest3, Third),
    fd_all_different([A,B,C,D,E,F,G,H,I,J]),
    first_3([Rest1, Rest2, Rest3|Rest]).

%-- All put together in one sudoku board
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
    valid_numbers(Board, Solution),
    valid_row(Board, Solution),
    valid_column(Board, Transposed),
    valid_boxes(Board).

%-- In the future I would like to look at making a nicer printer, also making a solution that works for any sized board (the valid_columns is hard coded for a 9 X 9 grid.
%-- Also alot of the rules have alot of responsibilities, I would like to break them down into simpler forms.

