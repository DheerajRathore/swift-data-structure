// Find the Largest element in an array

// Time Complexity: O(N)
// Space Complexity: O(1)

func findLargestNumberInArray(_ arr: [Int]) -> Int{
    var max = arr[0]
    for i in 0..<arr.count {
        if max < arr[i] {
            max = arr[i]
        }
    }
    return max
}

//[2, 5, 1, 3, 0]
print(findLargestNumberInArray([2, 5, 1, 3, 0]))
