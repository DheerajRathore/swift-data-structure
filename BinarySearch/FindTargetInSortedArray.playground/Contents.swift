/*
 Search Element in a Rotated Sorted Array
 Problem Statement: Given an integer array arr of size N, sorted in ascending order (with distinct values) and a target value k. Now the array is rotated at some pivot point unknown to you. Find the index at which k is present and if k is not present return -1.
 
 Time Complexity: O(logN), N = size of the given array.
 Reason: We are using binary search to search the target.
 Space Complexity: O(1)
 
 */


func searchTargetInRotatedArray(_ arr: [Int], _ n: Int, _ k: Int) -> Int {
    var low = 0
    var high = n - 1
    
    while (low <= high) {
        let mid = (low + high) / 2

        //if mid points the target
        if (arr[mid] == k){
            return mid
        }

        //if left part is sorted:
        if (arr[low] <= arr[mid]) {
            if (arr[low] <= k && k <= arr[mid]) {
                //element exists:
                high = mid - 1
            }
            else {
                //element does not exist:
                low = mid + 1
            }
        }
        else { //if right part is sorted:
            if (arr[mid] <= k && k <= arr[high]) {
                //element exists:
                low = mid + 1
            }
            else {
                //element does not exist:
                high = mid - 1
            }
        }
    }
    return -1
}

let n = 9
let k = 1
searchTargetInRotatedArray([7, 8, 9, 1, 2, 3, 4, 5, 6], n, k)
