/* Contains Duplicate : Check if a value appears atleast twice
 
 Problem Statement: Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
 
 Time Complexity:  O(N), where N is the length of the array. As searching in unorder_set takes O(1)
 Space Complexity: O(N), Where N is the number of elements stored in the set
 
 */


func containsDuplicate(_ arr: [Int]) -> Bool {
    
    var unorderSet: Set<Int> = []
    
    for num in arr {
        unorderSet.insert(num)
    }
    
    print(unorderSet.count)
    if arr.count == unorderSet.count {
        return false
    }
    
    return true
}

let value = containsDuplicate([1, 2, 3, 1])

