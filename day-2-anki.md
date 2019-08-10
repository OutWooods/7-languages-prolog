In prolog what's a good trick to help prolog optimise recursive goals?,put them at the end.
What are two collection times prolog has?,Lists and Tuples
What is a predicate?,A logical expression which evaluates to TRUE or FALSE. Normally to direct execution path in code. 
Why is the = in prolog a predicate?,It returns a success when two terms are unified. (So it checks if two things can be equal and then amkes it so if it can). 
What is unification in logic?,two terms and we want to see if they can be made to represent the same structure. 
What are the three parts to the prolog unification algorithn?,If they are constants they succeed if same but fail. If T is a variable then instantise T to T2. otherwise if T2 is a variable set T2 to T1.
When we do loves(X, mia) prolog mean?we're asking Prolog to give us all the values for X that unify. 
How do you deconstruct lists in prolog?, [Head|Tail] where the head will bind to the first element and the Tail to the rest. 
WHat is a wild card in prolog which binds with anything?,_
WHat's the beauty of using a relationship like append in prolog?,it can do so many things. You can find what two parts make one list - what that list would be - you can find possible splits
What is a comment in prolog?,%-- is a comment in prolog

