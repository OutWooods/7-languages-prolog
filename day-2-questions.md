// What are some implementations of a fibionacci series.

%--http://cubbi.com/fibonacci/prolog.html  -> for lots of examples

%-- Mine starts producing negative values after step 88. My understanding is that GNU integer aritmetic is unbounded so the size of integers is limited by avaliable memory. The 89th number in the fibionacci sequence is above that limit on mine.

fib(1, 0 , 1).
fib(1, 1, 2).
fib(Current, Previous, Step) :- LastStep is Step - 1, fib(Previous, Past, LastStep), Current is Previous + Past.


%-- another attempt I saw was this. One disadvantage is that this runs two recursive cycles and it crashes the stack trace in my terminal at around step 50. But it only takes two variables. And is more true to the fibionacci sequence principals in my opnion.

fib(0,0).
fib(1,1).
fib(F,N) :-
    N>1,
    N1 is N-1,
    N2 is N-2,
    fib(F1,N1),
    fib(F2,N2),
    F is F1+F2,

%--
fib(1, 1).
fib(2, 1).
fib(N, Out) :- N > 2, N1 is N - 1, N2 is N - 2, fib(N1, Prev), fib(N2, PrevPrev), Out is Prev + PrevPrev.

My attempt

// WHat problems are the Prolog community currently trying to solve?
%-- So I decided to focus on NLP and prolog.

// How does a solution to the Tower of Hanoi work?

// WHat are the challenges of dealing with not expressions in prolog? Why do you have to be careful with negation?
%-- so prolog works with exressions by trying to prove it from rules. If it fails it concludes the proposition is false. Aka negation is failure.
%-- \+ means not provable.

%-- 1. Reverse the elements of a list

%-- This has been great practise for me writing recursive functions. But also understanding how to follow a rules based declarative approach. Instead of saying what to do, I'm saying what is.

%-- So what is this saying. The first fact is saying empty list has a rewound relationship with empty list.
%-- The second is saying that the Tail has a rewind relationship with the Remainder. The Reversed result is the remainder with the head at the end.%-- Which makes sense. Reversing means effectively taking the first in the queue and putting it at the back. The second to last and putting that in the second last place.

rewind([], []).
rewind([Head|Tail], Reversed) :- rewind(Tail, Remainder), append(Remainder, [Head], Reversed).

%-- Reverse the elements of a list

%-- Proccess
%-- As usual building up from first principals. I know I could convert the rules for smallest into one line, but I think its more readable in this format.

smallest(A, B, Value) :- A = B, Value = B.
smallest(A, B, Value) :- A > B, Value = B.
smallest(A, B, Value) :- B > A, Value = A.

minimumList([First, Second], Smallest) :- smallest(First, Second, Smallest).
minimumList([First, Second, Third], Smallest) :- smallest(First, Second, FirstSmall), smallest(FirstSmall, Third, Smallest).
minimumList([First, Second, Third, Fourth], Smallest) :-
    smallest(First, Second, FirstSmall),
    smallest(FirstSmall, Third, SecondSmall),
    smallest(SecondSmall, Fourth, Smallest).

%-- Final result
smallest(A, B, Value) :- A = B, Value = B.
smallest(A, B, Value) :- A > B, Value = B.
smallest(A, B, Value) :- B > A, Value = A.

minimumList([First, Second], Smallest) :- smallest(First, Second, Smallest).
minimumList([First|Tail], Smallest) :- minimumList(Tail, CurrentSmallest), smallest(First, CurrentSmallest, Smallest).

// Sort the elements of a list



