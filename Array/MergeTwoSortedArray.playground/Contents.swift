/*
 Merge two Sorted Arrays Without Extra Space
 Problem statement: Given two sorted arrays arr1[] and arr2[] of sizes n and m in non-decreasing order. Merge them in sorted order. Modify arr1 so that it contains the first N elements and modify arr2 so that it contains the last M elements.
 
 Time Complexity: O(min(n, m)) + O(n*logn) + O(m*logm), where n and m are the sizes of the given arrays.
 Reason: O(min(n, m)) is for swapping the array elements. And O(n*logn) and O(m*logm) are for sorting the two arrays.
 Space Complexity: O(1) as we are not using any extra space.
 
 */


func mergeTwoSortedArray(_ arr1: inout [Int], _ arr2: inout [Int]) {
    
    var left = arr1.count - 1
    var right = 0
    
    
    //Swap the elements until arr1[left] is
        // smaller than arr2[right]:
    while (left >= 0 && right < arr2.count) {
            if (arr1[left] > arr2[right]) {
                swap(&arr1[left], &arr2[right])
                left = left - 1
                right = right + 1
            }
            else {
                break;
            }
        }

        // Sort arr1[] and arr2[] individually:
    arr1.sort()
    arr2.sort()
}

func swap(_ arr1: inout Int, _ arr2: inout Int) {
    let temp = arr1
    arr1 = arr2
    arr2 = temp
}


var arr1 = [1, 3, 5, 7]
var arr2 = [0, 2, 6, 8, 9]
mergeTwoSortedArray(&arr1, &arr2)
arr1
arr2
