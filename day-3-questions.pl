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

first_value([], [], []).
first_value([[Start|Rest]|Remaining], [Start|Beginning], [Rest|End]) :- 
    first_value(Remaining, Beginning, End).

valid_column([[],[],[],[],[],[],[],[],[]], []).
valid_column(Board, [Column|Columns]) :- 
    first_value(Board, Column, Remaining),
    fd_all_different(Column),
    valid_column(Remaining, Columns).

first_3([]).
first_3([First, Second, Third|Rest]) :- 
    First = [],
    first_3(Rest, Remaining).
first_3([First,Second,Third|Rest]) :-
    append([A,B,C], Rest1, First),
    append([D,E,F], Rest2, Second),
    append([G,H,I], Rest3, Third),
    fd_all_different([A,B,C,D,E,F,G,H,I,J]),
    first_3([Rest1, Rest2, Rest3|Rest]).
    
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
    valid_numbers(Board, Solution),
    valid_row(Board, Solution),
    valid_column(Board, Transposed),
    first_3(Board).

%-- Make a Sudoku solver print prittier solutions
