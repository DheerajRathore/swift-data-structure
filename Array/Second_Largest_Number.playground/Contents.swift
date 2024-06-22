// Find Second Largest Element in an array

//Time Complexity: O(N), Single-pass solution
//Space Complexity: O(1)

func findSecondLargestNumber(_ arr: [Int]) -> Int{
    
    var largestNumber = arr[0]
    var secondLargestNumber = arr[0]
    
    for i in 0..<arr.count {
        if  arr[i] > largestNumber {
            secondLargestNumber = largestNumber
            largestNumber = arr[i]
        } else if (arr[i] > secondLargestNumber && arr[i] != largestNumber) {
            secondLargestNumber = arr[i]
          }
    }
    
    return secondLargestNumber
}

print(findSecondLargestNumber([1,2,4,7,7,5]))
