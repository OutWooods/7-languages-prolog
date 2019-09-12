# So...What have I learnt?

## A totally different way of looking at programming

IO helped me see how JS worked but more deeply understand how Ruby, PhP and other languages implemented OO. It contrasted with them, but ultimately is still a language that still played in the world of OO and imperative programming.

But Prolog is just a completely different set of ideas, a whole different way of seeing code. Declarative programming takes (and is still taking) a bit of time to get my head around just. I keep asking why would you do it like this? But gradually, you start to see can see it's power.

The more different you go, the more you see that things you take for granted (e.g. before prolog I just thought 'obviously I have to explain to the programme how to solve the problem - that's just what programming is') are ultimately design decisions. Someone has chosen that, but they could have chosen something else. 

That leads you to think. Why pick that approach? Was it the right choice? 

Having said that, there are definately points using Prolog where you start appreciating how easy Ruby is to use too - comparison doesn't just point out flaws, it also makes you appreciate more how good you had it. 

## It's made me appreciate more what SQL is about

To be honest, before I used Prolog, I just saw SQL as some sort of glorified calculator, it wasn't a real language. It was just a set of instructions. It explains why SQL can be a real pain, when you tried to code imperatively with it. SQL is fundamentally about 'give me a request and I will fulfill it'. Don't tell me what to do.

You might plan how to phrase a request in SQL to help it optimise. But more and more that's SQL's job too. And I imagine that's the case with Prolog. If it continued, you'd make it better and better at optimising rules.

## It's excited me about logic

It's intriguing to see a different approach - but also one based around mathematical logic. Prolog's got me reading around the subject, reading more about formal logic and mathematical boolean logic. To understand what predicates are and why unification is different from assignment.

I think it's made me more open to understanding the funcational paradigm. I've been working solely with imperative languages (other than SQL, but even then I often do it with an ORM).

It's often alot like learning history, the more you learn, the more you realise you can't take anything for granted. The more distinct and different a society you study, the more you see the base assumptions you've been making but are totally unaware of.

Instead with Prolog it's about thinking about the rules, its almost a bit reverse TDD - you make the rules and then the programme will answer the questions. In TDD you write the tests (aka the rules) and then you have to figure out how it should work.

You can see how it can produce some quite novel solutions and ideas from basic logic.

## It's helped me understand recursion more

Prolog is the first language I've dealt with which hasn't had loops. So alot of the challenges have involved recursion. And its forced me to practise building up a recursive function.

But particularly, I've found the nature of prolog a good way to learn about how to write recusrsive functions. Prolog wants you to work out the rules - slowly building up a pattern to find the base case and then to find the recusion.

It's alot harder at first prolog because you can't just write it as a loop first - you have to actually think recursively. And because it's focused on the rules not actually the proccess it forces you to clarify your thinking alot more.

In many ways I find the declarative way of defining recursion in some ways simpler. It's going back to first principals. But it is harder too. Also not being able to alter variables is highly alien to me - but I hope will set me up well for Haskell etc.

I've also always been less of a fan of recursion - looping makes alot more intuative sense to me. But I can see why recursion is in some ways more expressive. As in many ways, its how we probably instinctively approach some problems.

## It's helping me change how I approach problems

The declarative approach is pushing me to think less about implementation - and instead really really focus on defining the problem, working out the rules and facts. It's really quite good for getting you to go back to first principals.

This is particularly helpful for my TDD approach, as really TDD is all about - don't think about how you'll implement this, think about the rules of the code. Then meet those rules.

It's been pretty challenging. But Prolog is one I'd like to come back to more - it feels like something that you can scratch the surface, but really - its power takes time to emerge.
