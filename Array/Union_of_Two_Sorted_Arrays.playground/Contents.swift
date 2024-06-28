/*
 Union of Two Sorted Arrays
 
 Problem Statement: Given two sorted arrays, arr1, and arr2 of size n and m. Find the union of two sorted arrays.
 The union of two arrays can be defined as the common and distinct elements in the two arrays.NOTE: Elements in the union should be in ascending order.
 
 Input:
 n = 5,m = 5.
 arr1[] = [1,2,3,4,5]
 arr2[] = [2,3,4,4,5]
 Output:  [1,2,3,4,5]
 
 Time Complexity: O(m+n).
 Space Complexity: O(m+n)
 
 */

func unionOfTwoSortedArray(_ arr1: [Int], _ arr2: [Int]) -> [Int]{
    
    var union = [Int]()
    var i:Int = 0
    var j: Int = 0
    
    while (i < arr1.count && j < arr2.count) {
        if (arr1[i] <= arr2[j]) // Case 1 and 2
        {
            if ( union.last != arr1[i]){
                union.append(arr1[i])
            }
            i = i + 1
        } else // case 3
        {
            if ( union.last != arr2[j]){
                union.append(arr2[j])
            }
            j = j + 1
        }
    }
    
    while (i < arr1.count) // IF any element left in arr1
    {
        if (union.last != arr1[i]) {
            union.append(arr1[i])
        }
        i = i + 1
    }
    while (j < arr2.count) // If any elements left in arr2
    {
        if ( union.last != arr2[j]){
            union.append(arr2[j])
        }
        j = j + 1
    }
    return union
}


//print(unionOfTwoSortedArray([1,2,3,4,5,6,7,8,9,10], [2,3,4,4,5,11,12]))
print(unionOfTwoSortedArray([1,2,3,4,5], [2,3,4,4,5]))
