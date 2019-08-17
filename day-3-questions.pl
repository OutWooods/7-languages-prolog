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

%-- Make a Sudoku solver print prittier solutions
