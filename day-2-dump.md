Often you use recursion rather than iteration.

Note: when coding and learning, its good to read code aloud. What does it mean, explain it step by step.

Remember recursive sub goals will use stack space and you can eventually run out.
Try and put the recursive goal at the end of the recursive rule. As then Prolog can optimize the call to use tail recursion optimisation (so it can discard the stack as it goes through the recursion).

Lists and Tuples
lists []
Tuple()
lists are containers of variable length whilst tuples are fixed

When prolog unifies it tries to make two of them match.
Two tuples unify if all elements unify

What is a predicate?,A logical expression which evaluates to TRUE or FALSE. Normally to direct execution path in code.
So in Prolog the = operator is a predicatr that success when two terms are unified. (So it checks if two things can be equal, and then amkes it so if it can).

Unification in logic - we have two erms and we want to see if they can be made to represent the same structure.
parent(alan, clive)
parent(X,Y)
The term parent(X,Y) unifies with the term above.

The prolog unification algorithn is a bit like this
1. If they are constants they succeed if same but fail.
2. If T is a variable then instantia T to T2
3. Otherwise if T2 is a variable instantiat T2 to T1

Prolog has three kinds of terms
1. Constants like numbers and atoms
2. Variables
3. complex terms

two terms can unify if
they are the same term
or they contain variables that can be unified so that the two terms without variables are the same

When we do loves(X, mia) we're asking Prolog to give us all the values for X that unify.

Lists have a capability that tuples don't. YOu can deconstruct lists. [Head|Tail] where the head will bind to the first element and the Tail to the rest.

_ is a wild card and unifies with anything. It doesn't care. basically, skip.
So in a list we can do [_,_,[HEAD|_]] to get the_third part

A count formula look slike this
count(0, [])
count(Count, [Head|Tail) :- count(TailCount, Tail), Count is TailCount + 1

We've simply described count as rules and goals.
The declarative interpretation is "The count of an empty list is zero. The count of a list is Count if we can prove that the TailCount + 1 is the total.

Append rule
append(List1, List2, List3) the rule is true if List3 is List1 + List2.
It can be a checker
append([oil],[water], [oil, water])
or it can be a builder
append([oil],[bubbles], What).

You can use it to do list subtraction
append[[oil], What, [oil, wine])
It can find possible splits
append(One, Two, [apples, oranges, bananas])

The key thing about prolog because its always unifying here, unification can be used for both setting values and checking. So whilst in IO you would use append to add to a list. Append in Prolog can be used to check lists but also to unify to find or create new lists.

a good rule is to break down and undersatnd all the rules and then express them in prolog

The reason alot of answers use foo bar is to make it clear there are no magic words. Somehow using key words makes it harder to understand at points, vecause you start thinking that the variable names means something. When actually its about clarify.
Good examples should change the words used lots so you can appreciate they're entirely arbitray.

Writing good recursion, slowly build up the rules - TDD effectively. Then find a way to generalise the rule. What are your base cases? What pattern emerges?

%-- is a comment in prolog

