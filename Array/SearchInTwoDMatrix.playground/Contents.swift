/*
 
 Search in a sorted 2D matrix

 Problem Statement: You have been given a 2-D array 'mat' of size 'N x M' where 'N' and 'M' denote the number of rows and columns, respectively. The elements of each row are sorted in non-decreasing order. Moreover, the first element of a row is greater than the last element of the previous row (if it exists). You are given an integer ‘target’, and your task is to find if it exists in the given 'mat' or not.
 
 Time Complexity: O(N + logM), where N = given row number, M = given column number.
 Reason: We are traversing all rows and it takes O(N) time complexity. But for all rows, we are not applying binary search rather we are only applying it once for a particular row. That is why the time complexity is O(N + logM) instead of O(N*logM).

 Space Complexity: O(1) as we are not using any extra space.
 */


func binarySearch(_ nums: [Int], _ target: Int) -> Bool {
    var low = 0
    var high = nums.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        if nums[mid] == target {
            return true
        } else if target > nums[mid] {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    return false
}

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    let n = matrix.count
    let m = matrix[0].count
    
    for i in 0..<n {
        if matrix[i][0] <= target && target <= matrix[i][m - 1] {
            return binarySearch(matrix[i], target)
        }
    }
    return false
}

// Main function equivalent
let matrix = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]]
let result = searchMatrix(matrix, 8)
print(result ? "true" : "false")
