![Insertion](http://www.geeksforgeeks.org/wp-content/uploads/gq/2013/03/Insertion-Sort.jpg)
# Insertion Sort
### ascending & descending

Insertion sort is a simple sorting algorithm that builds the final sorted array (or list) one item at a time. 
It is much less efficient on large lists than more advanced algorithms such as quicksort, heapsort, or merge sort. 

However, insertion sort provides several advantages:

* Efficient for (quite) small data sets, much like other quadratic sorting algorithms 
* More efficient in practice than most other simple quadratic algorithms such as selection sort or bubble sort
* Adaptive, i.e. efficient for data sets that are already substantially sorted: the time complexity is O(nk) when each element in the input is no more than k places away from its sorted position
* Stable, i.e. does not change the relative order of elements with equal keys
* In-place, i.e. only requires a constant amount O(1) of additional memory space
* Online, i.e. can sort a list as it receives it

Source: [Wikipedia](https://en.wikipedia.org/wiki/Insertion_sort)
