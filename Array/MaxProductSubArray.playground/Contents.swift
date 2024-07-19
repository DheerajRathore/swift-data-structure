/*
 Maximum Product Subarray in an Array
 Problem Statement: Given an array that contains both negative and positive integers, find the maximum product subarray.
 Time Complexity: O(N).
 Space Complexity: O(1).
 */

func maxProductSubArray(_ arr: [Int]) -> Int {
    
    let n = arr.count

    var preArray: Int = 1
    var suffArray: Int = 1
    var result = Int.min
    for i in 0..<n {
        if (preArray == 0) { preArray = 1 }
        if (suffArray == 0) { suffArray = 1 }
        preArray = preArray * arr[i]
        suffArray = suffArray * arr[n - i - 1]
        result = max(result, max(preArray, suffArray))
    }
    
    return result
}

maxProductSubArray([1,2,3,4,5,0])
