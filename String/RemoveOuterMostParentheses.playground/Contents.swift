/*
   Remove Outer Most Parentheses.
   We need to remove the outermost parentheses from each segment of valid parentheses in the given string. A valid parentheses string is one where every opening parenthesis ( has a matching closing parenthesis ). If we can track how many open and close parentheses we've seen, we can figure out which parentheses are the outermost ones and skip them.
 
 Time complexity:  O(n), where n is the length of the string s. This is because we go through the string once.
 Space complexity: The space complexity is O(n), where n is the length of the string s, because the result string might store almost all characters from s.
 */

func removeOuterMostParentheses(_ str: String) -> String {
    var balance = 0
    var result = ""
    
    for ch in str{
        if ch == "(" {
            if balance > 0 {
                result = result + String(ch)
            }
            balance = balance + 1
        }else {
            balance = balance - 1
            if balance > 0 {
                result = result + String(ch)
            }
        }
    }
    
    return result
}

let answer = removeOuterMostParentheses("(()()()())")
