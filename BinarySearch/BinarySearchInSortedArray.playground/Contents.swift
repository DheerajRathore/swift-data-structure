/*
 Binary Search to find target number in sorted array.
  Time Complexity: O(N)
 */

// iterative approach
func binarySearch(_ arr: [Int], _ target: Int) -> Int {
    let size = arr.count
    var low = 0
    var high = size - 1

    // Perform the steps:
    while (low <= high) {
        var mid = (low + high) / 2
        if (arr[mid] == target) {
            return mid
        }
        else if (target > arr[mid]) {
            low = mid + 1 }
        else { high = mid - 1
        }
        
    }
    return -1;
}

binarySearch([3, 4, 6, 7, 9, 12, 16, 17], 17)


// recursive approach
func binarySearchRecursive(_ arr: [Int],_ low: Int, _ high: Int, _ target: Int) -> Int {

    //handle base case.
    if (low > high) {
        return -1
    }

    var mid = (low + high) / 2
    if (arr[mid] == target){
        return mid }
    else if (target > arr[mid]) {
        return binarySearchRecursive(arr, mid + 1, high, target)
    }
    return binarySearchRecursive(arr, low, mid - 1, target)
}

binarySearchRecursive([3, 4, 6, 7, 9, 12, 16, 17],0, 7,9)
