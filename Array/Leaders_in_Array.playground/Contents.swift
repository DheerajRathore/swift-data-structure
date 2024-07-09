/*
 Leaders in an Array.
 Problem Statement: Given an array, print all the elements which are leaders. A Leader is an element that is greater than all of the elements on its right side in the array.

 Time Complexity: O(N).
 Space Complexity: O(N).

 */

func findLeaderInArray(_ arr: [Int]) -> [Int]{
    
    var leader = arr[arr.count-1]
    var traversal = arr.count - 2
    var leadersArray = [leader]
    while traversal >= 0 {
       
        if arr[traversal] > leader {
            leader = arr[traversal]
            leadersArray.append(leader)
        }
        traversal = traversal - 1
    }
    
    return leadersArray
}

let ans = findLeaderInArray([10, 22, 12, 3, 0, 6])
