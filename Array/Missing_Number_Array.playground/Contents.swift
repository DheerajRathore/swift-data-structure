/*
 Find the missing number in an array.
 
 Given an integer N and an array of size N-1 containing N-1 numbers between 1 to N. Find the number(between 1 to N), that is not present in the given array.
 
 Time Complexity: O(N)
 Space Complexity: O(1)
 */

func findMissingNumberArray(_ arr: [Int], _ num: Int) -> Int{
    
    //Summation of first N numbers:
    let sum = (num * (num + 1)) / 2
    print("=======\(sum)")
    
    //Summation of all array elements:
    var s2 = 0
    for i in 0..<arr.count {
        s2 += arr[i]
    }
    
    print("--------\(s2)")
    // get the missing number
    let missingNum = sum - s2
    return missingNum
}

print(findMissingNumberArray([1,2], 2))
