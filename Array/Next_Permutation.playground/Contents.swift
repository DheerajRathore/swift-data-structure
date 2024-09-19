
/*
 next_permutation : find next lexicographically greater permutation
 Problem Statement: Given an array Arr[] of integers, rearrange the numbers of the given array into the lexicographically next greater permutation of numbers.
 
 If such an arrangement is not possible, it must rearrange to the lowest possible order (i.e., sorted in ascending order).
 Time Complexity: O(3N), where N = size of the given array
 Finding the break-point, finding the next greater element, and reversal at the end takes O(N) for each, where N is the number of elements in the input array. This sums up to 3*O(N) which is approximately O(3N).

 Space Complexity: Since no extra storage is required. Thus, its space complexity is O(1).
 
*/

/*
 Algorithm / Intuition
 The steps are the following:

 Find the break-point, i: Break-point means the first index i from the back of the given array where arr[i] becomes smaller than arr[i+1].
 For example, if the given array is {2,1,5,4,3,0,0}, the break-point will be index 1(0-based indexing). Here from the back of the array, index 1 is the first index where arr[1] i.e. 1 is smaller than arr[i+1] i.e. 5.
 To find the break-point, using a loop we will traverse the array backward and store the index i where arr[i] is less than the value at index (i+1) i.e. arr[i+1].
 If such a break-point does not exist i.e. if the array is sorted in decreasing order, the given permutation is the last one in the sorted order of all possible permutations. So, the next permutation must be the first i.e. the permutation in increasing order.
 So, in this case, we will reverse the whole array and will return it as our answer.
 If a break-point exists:
 Find the smallest number i.e. > arr[i] and in the right half of index i(i.e. from index i+1 to n-1) and swap it with arr[i].
 Reverse the entire right half(i.e. from index i+1 to n-1) of index i. And finally, return the array.

 */

func findNextPermutation(_ arr: inout [Int]) -> [Int] {
    let n = arr.count // size of the array

    // Step 1: Find the break point:
    var ind = -1 // break point
    for i in stride(from: n - 2, through: 0, by: -1) {
        if arr[i] < arr[i + 1] {
            // index i is the break point
            ind = i
            break
        }
    }

    // If break point does not exist:
    if ind == -1 {
        // reverse the whole array:
        arr.reverse()
        return arr
    }

    // Step 2: Find the next greater element
    //         and swap it with A[ind]:
    for i in stride(from: n - 1, through: ind + 1, by: -1) {
        if arr[i] > arr[ind] {
            arr.swapAt(i, ind)
            break
        }
    }

    // Step 3: reverse the right half:
    // Step 3: reverse the right half:
    var reverseStartIndex = ind + 1
    var reverseEndIndex = n - 1
       while reverseStartIndex < reverseEndIndex {
           arr.swapAt(reverseStartIndex, reverseEndIndex)
           reverseStartIndex += 1
           reverseEndIndex -= 1
       }

    return arr
}

var arr =  [2, 1, 5, 4, 3, 0, 0] //[3,2,1]//[1,3,2]//
let result = findNextPermutation(&arr)
