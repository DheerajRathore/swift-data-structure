/*
 Check for Balanced Parentheses
 
 Problem Statement: Check Balanced Parentheses. Given string str containing just the characters '(', ')', '{', '}', '[' and ']', check if the input string is valid and return true if the string is balanced otherwise return false.

 Note: string str is valid if:
 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.

 Time Complexity: O(N)
 Space Complexity: O(N)
 */


func isValidParentheses(_ s: String) -> Bool {
    var stack: [Character] = []
    
    for char in s {
        if char == "(" || char == "{" || char == "[" {
            stack.append(char)
        } else {
            if stack.isEmpty {
                return false
            }
            let top = stack.removeLast()
            if (char == ")" && top == "(") || (char == "]" && top == "[") || (char == "}" && top == "{") {
                continue
            } else {
                return false
            }
        }
    }
    
    return stack.isEmpty
}

let result = isValidParentheses("()[{}()]")//("[()") //
