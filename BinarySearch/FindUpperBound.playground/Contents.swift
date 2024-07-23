/*
   Find Upper Bound.
   Description: Given a sorted array of N integers and an integer x, write a program to find the upper bound of x.
 
 Time Complexity: O(logN) (Using Binary Search)
 Space Complexity: O(1)
 */


func findUpperBound(_ arr: [Int], _ target: Int) -> Int {
    var low = 0
    var high = arr.count - 1
    var result = arr.count

        while (low <= high) {
            let mid = (low + high) / 2
            if (arr[mid] > target) {
                result = mid
                //look for smaller index on the left
                high = mid - 1
            }
            else {
                low = mid + 1
            }
        }
        return result
}

findUpperBound([3, 5, 8, 9, 15, 19], 3)
