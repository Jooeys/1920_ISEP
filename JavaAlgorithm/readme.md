## Best practices for Java Sorting Algorithms. 


- Program: Implement bubble sort in java.
Bubble sort, also referred to as sinking sort, is a simple sorting algorithm that works by repeatedly stepping through the list to be sorted, comparing each pair of adjacent items and swapping them if they are in the wrong order. The pass through the list is repeated until no swaps are needed, which indicates that the list is sorted. The algorithm gets its name from the way smaller elements "bubble" to the top of the list. Because it only uses comparisons to operate on elements, it is a comparison sort. Although the algorithm is simple, most of the other sorting algorithms are more efficient for large lists.
![image](http://www.java2novice.com/images/bubblesort.jpeg)

```
public class MyBubbleSort {
  
    // logic to sort the elements
    public static void bubble_srt(int array[]) {
        int n = array.length;
        int k;
        for (int m = n; m >= 0; m--) {
            for (int i = 0; i < n - 1; i++) {
                k = i + 1;
                if (array[i] > array[k]) {
                    swapNumbers(i, k, array);
                }
            }
            printNumbers(array);
        }
    }
  
    private static void swapNumbers(int i, int j, int[] array) {
  
        int temp;
        temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }
  
    private static void printNumbers(int[] input) {
          
        for (int i = 0; i < input.length; i++) {
            System.out.print(input[i] + ", ");
        }
        System.out.println("\n");
    }
  
    public static void main(String[] args) {
        int[] input = { 4, 2, 9, 6, 23, 12, 34, 0, 1 };
        bubble_srt(input);
  
    }
}
```

```
Output:
2, 4, 6, 9, 12, 23, 0, 1, 34, 

2, 4, 6, 9, 12, 0, 1, 23, 34, 

2, 4, 6, 9, 0, 1, 12, 23, 34, 

2, 4, 6, 0, 1, 9, 12, 23, 34, 

2, 4, 0, 1, 6, 9, 12, 23, 34, 

2, 0, 1, 4, 6, 9, 12, 23, 34, 

0, 1, 2, 4, 6, 9, 12, 23, 34, 

0, 1, 2, 4, 6, 9, 12, 23, 34, 

0, 1, 2, 4, 6, 9, 12, 23, 34, 

0, 1, 2, 4, 6, 9, 12, 23, 34,
```

- Program: Implement quick sort in java.
Quicksort or partition-exchange sort, is a fast sorting algorithm, which is using divide and conquer algorithm. Quicksort first divides a large list into two smaller sub-lists: the low elements and the high elements. Quicksort can then recursively sort the sub-lists.

Steps to implement Quick sort:

1) Choose an element, called pivot, from the list. Generally pivot can be the middle index element.
2) Reorder the list so that all elements with values less than the pivot come before the pivot, while all elements with values greater than the pivot come after it (equal values can go either way). After this partitioning, the pivot is in its final position. This is called the partition operation.
3) Recursively apply the above steps to the sub-list of elements with smaller values and separately the sub-list of elements with greater values.
![image](http://www.java2novice.com/images/quick-sort1.png)
The complexity of quick sort in the average case is Θ(n log(n)) and in the worst case is Θ(n2).

```
package com.java2novice.sorting;
 
public class MyQuickSort {
     
    private int array[];
    private int length;
 
    public void sort(int[] inputArr) {
         
        if (inputArr == null || inputArr.length == 0) {
            return;
        }
        this.array = inputArr;
        length = inputArr.length;
        quickSort(0, length - 1);
    }
 
    private void quickSort(int lowerIndex, int higherIndex) {
         
        int i = lowerIndex;
        int j = higherIndex;
        // calculate pivot number, I am taking pivot as middle index number
        int pivot = array[lowerIndex+(higherIndex-lowerIndex)/2];
        // Divide into two arrays
        while (i <= j) {
            /**
             * In each iteration, we will identify a number from left side which 
             * is greater then the pivot value, and also we will identify a number 
             * from right side which is less then the pivot value. Once the search 
             * is done, then we exchange both numbers.
             */
            while (array[i] < pivot) {
                i++;
            }
            while (array[j] > pivot) {
                j--;
            }
            if (i <= j) {
                exchangeNumbers(i, j);
                //move index to next position on both sides
                i++;
                j--;
            }
        }
        // call quickSort() method recursively
        if (lowerIndex < j)
            quickSort(lowerIndex, j);
        if (i < higherIndex)
            quickSort(i, higherIndex);
    }
 
    private void exchangeNumbers(int i, int j) {
        int temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }
     
    public static void main(String a[]){
         
        MyQuickSort sorter = new MyQuickSort();
        int[] input = {24,2,45,20,56,75,2,56,99,53,12};
        sorter.sort(input);
        for(int i:input){
            System.out.print(i);
            System.out.print(" ");
        }
    }
}
```

