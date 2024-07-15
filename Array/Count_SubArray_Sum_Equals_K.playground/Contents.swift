/*
 Count Subarray sum Equals K
 Problem Statement: Given an array of integers and an integer k, return the total number of subarrays whose sum equals k.

 A subarray is a contiguous non-empty sequence of elements within an array.
 Time Complexity: O(N) or O(N*logN) depending on which map data structure we are using, where N = size of the array.
 */


func findAllSubarraysWithGivenSum(_ arr: inout [Int], _ k: Int) -> Int {
    let n = arr.count; // size of the given array.
    var dict: [Int:Int] = [:]
    var preSum = 0
    var count = 0

    dict[0] = 1 // Setting 0 in the Dictionary.
    for i in 0..<n {
        // add current element to prefix Sum:
        preSum += arr[i]
        let remove = preSum - k
        // Add the number of subarrays to be removed:
        count = count + (dict[remove] ?? 0)
        // Update the count of prefix sum
        dict[preSum] =  (dict[preSum] ?? 0) + 1
    }
    return count
}

var array = [3, 1, 2, 4]
findAllSubarraysWithGivenSum(&array, 6)
