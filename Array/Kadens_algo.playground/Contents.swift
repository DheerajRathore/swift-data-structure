/*
 Kadane's Algorithm : Maximum Subarray Sum in an Array

 Problem Statement: Given an integer array arr, find the contiguous subarray (containing at least one number) which has the largest sum and returns its sum and prints the subarray.
 
 Time Complexity: O(N), where N = size of the array.
 Reason: We are using a single loop running N times.
 Space Complexity: O(1)
 */

func maxSubarraySum(_ arr: [Int]) -> Int {
    var maxi = arr[0] // maximum sum
    var sum = 0

    for i in 0..<arr.count  {

        sum = sum + arr[i]

        if (sum > maxi) {
            maxi = sum
        }

        // If sum < 0: discard the sum calculated
        if (sum < 0) {
            sum = 0
        }
    }

    // To consider the sum of the empty subarray
    // uncomment the following check:

    //if (maxi < 0) maxi = 0;

    return maxi
}

maxSubarraySum([-2, 1, -3, 4, -1, 2, 1, -5, 4])

