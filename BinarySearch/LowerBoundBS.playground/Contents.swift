/*
 Implement Lower Bound
 Problem Statement: Given a sorted array of N integers and an integer x, write a program to find the lower bound of x.
 
 Time Complexity: O(logN) (Binary Search)
 Space Complexity: O(1).
 
 */


func findLowerBound(_ arr: [Int], _ x: Int) -> Int {
    var low = 0
    var high = arr.count - 1
    var result = arr.count

    while (low <= high) {
        let mid = (low + high) / 2
        // maybe an answer
        if (arr[mid] >= x) {
            result = mid
            high = mid - 1
        }
        else {
            low = mid + 1
        }
    }
    return result
}

// call the method.
findLowerBound([1,2,2,3], 2)
