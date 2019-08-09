%-- Sort the elements of a list

%-- Proccess
%-- As usual building up from first principals. I know I could convert the rules for smallest into one line, but I think its more readable in this format.

%-- Final result
smallest(A, B, Value) :- A = B, Value = B.
smallest(A, B, Value) :- A > B, Value = B.
smallest(A, B, Value) :- B > A, Value = A.

largest(A, B, Value) :- A = B, Value = B.
largest(A, B, Value) :- A > B, Value = A.
largest(A, B, Value) :- B > A, Value = B.

minimumList([First, Second], Smallest) :- smallest(First, Second, Smallest). 
minimumList([First|Tail], Smallest) :- minimumList(Tail, CurrentSmallest), smallest(First, CurrentSmallest, Smallest).  

%-- Sort the elements
%-process

sorted([Value],[Value]).
sorted([First, Second], [First, Second]) :- Second >= First.
sorted([First, Second], [Second, First]) :- First > Second.
sorted([First, Second, Third], Sorted) :- 
