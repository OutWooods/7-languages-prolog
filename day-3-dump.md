Solving suduku

First rule
For a solve puzzle the numbers in the puzzle and the solution should be the same

so soduku(Puzzle, Solition) :- Solution = Puzzle. 

Loads of things fit which are wrong. But this is just stage 1. 

Second rule
The Suduku board has a grid of 16 cells with values from 1-4.

gnu prolog has a predicate to check if all the values are in a range. fd_domain(list, LowerBound, UpperBound)

So you add two rules:

fd_domain(Puzzle, 1, 4). To say, should only contain 1 - 4. 
Puzzle = [] <- 16 variables inside. To say it should be 16 large.

Third rule 
The Board has 4 rows - 4 columns and four squares 

Row1 = [] <- for values
Row2 = []:w
:w


SO... How do you solve Suduko in Prolog?
 
Well heere a four by 4 solution
```
valid([]).
valid([Head|Tail]) :- 
    fd_all_different(Head),
    valid(Tail).

sudoku(Puzzle, Solution) :- 
    Solution = Puzzle,
    Puzzle = [S11, S12, S13, S14,
              S21, S22, S23, S24,
              S31, S32, S33, S34,
              S41, S42, S43, S44],
    fd_domain(Puzzle, 1, 4),

    Row1 = [S11, S12, S13, S14],
    Row2 = [S21, S22, S23, S24],
    Row3 = [S31, S32, S33, S34],
    Row4 = [S41, S42, S43, S44],
    Col1 = [S11, S21, S31, S41],
    Col2 = [S12, S22, S32, S42],
    Col3 = [S13, S23, S33, S43],
    Col4 = [S14, S24, S34, S44],
    Square1 = [S11, S12, S21, S22],
    Square2 = [S13, S14, S23, S24],
    Square3 = [S31, S32, S41, S42],
    Square4 = [S33, S34, S43, S44],

    valid([Row1, Row2, Row3, Row4,
           Col1, Col2, Col3, Col4, 
	   Square1, Square2, Square3, Square4]).
```
This is where you see the brilliance of Prolog. You don't tell it how to solve a sudoku. You give it the rules. 
And it solves it. 

Here I give it a function valid. Which checks a set of arrays to make sure each array contains only unique values (just like in suduko).
Then I have a sudoku function. 

Rules
The Puzzle and the Solution must unify (makes sense so far).
The Puzzle should only contain values from 1- 4.
The first row is these four values... etc. 
All of these should be unique. 

Then give it some empty values with _ (or variables, but they will need to be different each time). And it will fill in the gaps.
It will even find multiple solutions if  its possible!


%-- 8 queens problem

%-- Test if a queen is valid

valid_queen((_, Col)) :- 
    member(Col,[1,2,3,4,5,6,7,8]).

%-- So member is a predicate that checks whether the rows and columns are valid. So the queens row and range are valid

valid_board([]).
valid_board([Head|Tail]) :- valid_queen(Head), valid_board(Tail).

%-- So an empty board is valid. And the board is valid if a queen is valid and the rest of the board is valid too. 

%-- This is just getting all the column values
cols([],[]).
cols([(_, Col)|RemainingQueens], [Col|RemainingCols]) :-
	cols(RemainingQueens, RemainingCols).

%-- This is getting the positive gradient diagonal values 
posDiag([],[]).
posDiag([(Row, Col)|RemainingQueens], [DiagPosition|RemainingDiags]) :-
        DiagPosition is Row + Col,
	posDiag(RemainingQueens, RemainingDiags).

%-- This is getting the negative gradient diagonal values 
negDiag([],[]).
negDiag([(Row, Col)|RemainingQueens], [DiagPosition|RemainingDiags]) :-
        DiagPosition is Row - Col,
	negDiag(RemainingQueens, RemainingDiags).

eight_queens(Board) :- 
  Board = [(1,_), (2,_), (3,_), (4,_), (5,_), (6,_), (7,_), (8,_)],
  length(Board, 8),
  valid_board(Board),

  cols(Board, Cols),
  posDiag(Board, PosDiag),
  negDiag(Board, NegDiag),

  fd_all_different(Cols),
  fd_all_different(PosDiag),
  fd_all_different(NegDiag).






