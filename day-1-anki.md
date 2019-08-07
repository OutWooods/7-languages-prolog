What does imperative mean?,giving an authorative command
What does declarative mean?,making a declaration
Name two declarative programming languages?,SQL - Prolog
What does declarative programming often overlap with?,mathematical logic
Formal definition of declarative?,programmes describe their desired results without explicitly listing commands or steps
Imperative vs declarative programming?,declarative focuses on what the program should do without specifying how
What do impertaive languages do?,use statements that change a programmes state - commands for the computer to perform - and how it should operate
Name two imperative languages?,Ruby and Io
What do high level imperative languages do to make your life easier?,combine lots of steps
Baking analogy to prolog?,You describe a cake and it makes you one
WHat's one of the nice things about prolog?,you can leave gaps in your logic and prolog will fill them in for you
WHat's the equivalent to a DB (in some ways) for prolog?,knowledge base
What is a knowledgebase in prolog?,a combination of facts and rules
In Prolog what indicates that something is immutable?,a lowercase starting letter - thats an atom
What is a variable in prolog?,something that starts with an upper or lowercase
What do you need to end instructions with in prolog?,.
What is this :- in prolog?,a sub goal. Aka for this to be true - this has to be true
When you run a query in prolog what does yes and no mean?,yes means there are no more alternatives remaining and no means there are more but it would require more computation.
How do you get all possible results of a query in prolog?,a
How do you exit the prolog command line?,ctrl c   e
What is unification as opposed to assignment?,unification means make both sides the same. assignment means store a value in a particular point.
How do you write a simple fact in prolog?,sunny. that means sunny is true
WHat should facts always be in prolog?,lowercase start as they are not mutable
in prolog What can you do for more complex facts?,represent them as relations. e.g. likes(tom comm sleep)
in prolog WHat does likes(tom com swimming)?,it means tom likes swimming and swimming likes tom as its relationship
in prolog If you wanted to get all potential values from a relationship how would you do that?,Pass a variable in the place of what you want to find
in prolog What can a variable unify with?,a fact (a immutable value) or another variable. As long as its not logically inconsistent
What can you use to make statements about the world in prolog?,rules
in prolog what are variations of rules called?,clauses
Write in prology 'All men are mortal'?,mortal(X) :- human(X)
Describe mortal(X) :- human(X) in declarative form?,For a given X - X is mortal if X is human
Describe mortal(X) :- human(X) in Procedural form?,To prove the main goal that X is mortal prove the subgoal is human
What does comma mean in rules?,and
fun(chocolate) means?,chocolate is always fun
