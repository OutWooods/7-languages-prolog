Prolog is a declaritive language

Io and Ruby are imperative languages - they're like recipies you tell the computer exactly what to do and how to do  it. Higher level ones may combine lots of steps into one but you're essentially always describing a step by step process for baking a cake.

A declarative language - like prolog, you throw some facts and inferences at Prolog and it does the reasoning for you. You describe the characteristics of the cake and it'll bake you one.

You can leave gaps in your logic - prolog will try and fill them in for you.

Prolog works on db's but the db's consist of logical rules and relationships.

Facts and rules - Prolog will build a knowledge base.

In prolog the letter matters - if a word begins with a lowercase character its an atom - like a symbol in ruby its a fixed value
if its uppercase or underscore then its a variable which can change.

In Prolog you need to give it a knowledge base - this is a set of rules and relationships from which it will query it to answer a question. Very much like sql.
Like sql its a pedantic bastard and will expect you to put a full stop at the end of an instruction like in sql and ;

:- is called a sub goal (Aka for the query to succeed and be true - or yes).

when you run a query it will return yes if there are no more alternatives remaining and no if there are more but it would require more computation.

Prolog lets you express logic in facts and inferences and then lets you ask questions. You're not responsible for any step by step recipie. It is not about writing alogrithms to solve logical problems. It is about describing the world, and presenting logical problems that your computer cna try and solve.


in Java and RUby x = 10 means assign 10 the variable x.
Unification accross two structures tries to make both structures identical.
= means unify - or make both sides the same.

Prologg - good for building a scheduler
It's a bit all or nothing - it gives you a solution or nothing at all.

It's beauty is you don't have to describe the solution to a problem.
You only have to describe the problem.


In prolog you van make some statements by using facts.
E.g. sunny.
that means suny is try because it matches it in a database of facts.

facts should always be lowercase (as facts are not mutable). And end with a ful stop.

more complicated facts can have arguements. Aka relations.
likes(john, mary)  <- relations also are lowercase
This means, the relationship 'likes' links john and mary.
You can have it either way round, mary likes john or john likes mary as its a relationship.

If you want to query that you use a variable.
So likes(john, mary)
likes(john, What) and then it'll suggest values for What.
Varables have an uppercase charater.

WHat in this care unifies with mary

A variable can unify with an immutable value.
eats(fred,Food)
eats(Person,jim)
Person can unify with fred
Food can unify with jim

A variable can unify with a variable.


Rules allow you to make conditional statements about our world.
Rules can have several variations - hence clauses.
These clauses give us different choices about how to perform inference about our world

'All men are mortal'

mortal(X) :- human(x)

There are two ways of reading this
Declarative - For a given X, X is mortal if X is human
Procedural - To prove the main goal that X is moral, prove the subgoal is human

You can have multiple goals

fun(X) :- red(X), car(X). <- comma means and  So if the item is red and a car
fun(ice_cream) <- ice_cream is always fun

Variables are scoped to a partiuclar clause or rule - so two separate rules relating to the same thing will have different variables even if they have the same name.

Prolog backtracks - it'll go back to previous conditions if a prior one fails.

; for next, a for all solutions



