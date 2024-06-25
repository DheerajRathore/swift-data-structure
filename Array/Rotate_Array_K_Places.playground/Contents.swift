/*
 Rotate array by K elements.
 Problem Statement: Given an array of integers, rotating array of elements by k elements either left or right.
 
 Time Complexity - O(N) where N is the number of elements in an array
 Space Complexity - O(1) since no extra space is required
 */

func reverse(_ arr: inout [Int], _ paramStart: Int, _ paramEnd: Int)
{
    var start = paramStart
    var end = paramEnd
    while (start <= end)
    {
        let temp = arr[start]
        arr[start] = arr[end]
        arr[end] = temp
        start = start + 1
        end = end - 1
    }
}

// Function to Rotate k elements to right
func rotateRight(_ arr: inout [Int], _ n: Int, _ k: Int)
{
    // Reverse first n-k elements
    Reverse(&arr, 0, n - k - 1)
    // Reverse last k elements
    Reverse(&arr, n - k, n - 1)
    // Reverse whole array
    Reverse(&arr, 0, n - 1)
}


// Function to Rotate k elements to right
func rotateLeft(_ arr: inout [Int], _ n: Int, _ k: Int)
{
    // Reverse first k elements
    reverse(&arr, 0, k - 1)
    // Reverse last n-k elements
    reverse(&arr, k, n - 1)
    // Reverse whole array
    reverse(&arr, 0, n - 1)
}


var arr = [1, 2, 3, 4, 5, 6, 7]
let n = 7
let k = 2

// Rotate right example.
//rotateRight(&arr, n, k)
//for i in 0..<arr.count{
//    print(arr[i])
//}
//

// Rotate Left Example.
rotateLeft(&arr, n, k)
for i in 0..<arr.count{
    print(arr[i])
}

