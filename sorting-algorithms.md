In the 1880s in the US the census took 8 years to tabulate
Hollerith came up with a system of punched cards to store information. Which was used for the 1890 census. 
Holleriths firm become the Computer Tabulating Recording company. Later. International Buisiness machines. 

By the 1960s its estimated a quarter of computing power was on sorting. FInding largest and smallest. 

Sorting is used for your emails, for your facebook feed, for names in your phones phonebook. 

As things you want to sort increases, the cost grows. Disseconomies of scale. 
Scale can hurt. 

Compuer scienstsis test algorithms on their worst case. 
WOrld records for their best case.

Big-O notation. It explains the relationship. How complex the algorithm is in t erms of worst case scenario. 
O(1) (or O(n^0)) - the number doesn't matter. Its a fixed time. E.g. cleaning your house for a party. Number of guests does not matter. Taking the first value from an array.
O(log n) <- can sometimes be used as an improvement on a class O(n) alogoritha. Divide and conquer algorithms are always this. Remember we don't care about the base - we care about the scale rate.
O(n) - linear growth - the time it takes to pass the tofu around the table. Double the guests - double the time. Adding up an array.
O(n log n) - linearithmic time - merge sort fits this. Iterations that use divide and conquer are O(n log n).
O(n^2) -  quadratic growth - every guest hugs every other guest. You don't do O(2N^2) because the n^2 trumps it - the highest power matters most.  nested loops working over the same collection again are always n^2.
O(n!) - factorial - go through every combination of playing cards.

An improvement on O(N^2) is sometimes O(n log n). 

Bubble sort lands us in quadratic time. You go along, comparing books in pairs. Loop back to the start. Once you don't change. You don't change.
Insertion sort - not really much quicker. You put one book in the middle. Get a second book, see if that goes left or right.
Merge sort - its a divide and conquer approach. Merge sort works by splitting all the elements in a list down to smaller two element lists which can then be sorted easily in one pass. You keep splitting down until you have pairs. Then you recursively merge these lists back into a larger list. 

Merge sort - stage one. SPlit split split until you have singular parts O(n).  Then you merge the lists back together O(log n). The way you merge is you get the smallest numbers from the two groups. Compare. Place the smallest one in. Then Take the smallest one left compare it to the smallest one on the other list. Loop until all are gone.

Selection sort - O(n^2). Find the smallest value - put it at the start and swap it with the next value.

Bucket sort - putting things into categories is O(nm) time - m being the number of categories. So Big O notation is O(n).

Binary search.

Simplify
O(1 + 2) 
O(n * 3)
O(n^2 + 3) 
O(n! + n^ 2).

Premier league is a round-round so its O(n^2) 

Gauss summary equation S = n(n +1)/2 to add up continous numbers.

log2(512) = X means what? Log Base 2 to the ower of X = 512.Aka how many times do you multiple 2 by itself to get 512.
log on its own means to the 10. 

log(100) = 2

so O(n log n)
log2(n)=x

Rememeber nested loops of the same list are essentially O(n) inside an O(n) so O(n * n). But what if we replaced one of the O(n) operations with O(log n)? Then we'd have an O(n log n) operation...


Space complexity vs time. 
Algorithms - you can think about time complexity (how long will this take).
But also space complexity - what are the resource requirements of your algorithm.

A programme has two ways to remember things. The heap and the stack.
When a variable is declared in a block of code it is stored on the stack. When a block of code goes out of scope, the variables are removed from the stack. 

Stack overflow means the stack has run out of space.

