/*
 Find the number that appears once, and the other numbers twice

 Problem Statement: Given a non-empty array of integers arr, every element appears twice except for one. Find that single one.

 Time Complexity: O(N), where N = size of the array.
 Reason: We are iterating the array only once.
 Space Complexity: O(1)
 
 Approach:
 SING BITWISE XOR OPERATOR (USING CONSTANT SPACE)
 To use this approach you first need to understand about Bitwise XOR operator.
 Most of us who have a background in physics ( highschool level ) , are aware of the LOGIC GATES.
 One of such gates is the XOR Gate :
 According to this gate , the output is true , only if both the inputs are of opposite kind .
 That is ,
 A B Y
 0 0 0
 0 1 1
 1 0 1
 1 1 0

 We apply the extended version of this gate in our bitwise XOR operator.
 If we do "a^b" , it means that we are applying the XOR gate on the 2 numbers in a bitwise fashion ( on each of the corresponding bits of the numbers).
 Similarly , if we observe ,

 A^A=0
 A^B^A=B
 (A^A^B) = (B^A^A) = (A^B^A) = B This shows that position doesn't matter.
 Similarly , if we see , a^a^a^a......... (even times)=0 and a^a^a........(odd times)=a
 
 */

func findNumberAppearOnce(_ arr: [Int]) -> Int{
    
    var ans = 0
    for num in arr {
        ans = ans ^ num
    }
    return ans
}

print(findNumberAppearOnce([4, 1, 2, 1, 2]))
