/*
 Spiral Traversal of Matrix
 Problem Statement: Given a Matrix, print the given matrix in spiral order.
 
 Time Complexity: O(m x n) { Since all the elements are being traversed once and there are total n x m elements ( m elements in each row and total n rows) so the time complexity will be O(n x m)}.
 Space Complexity: O(n)
 */


func spiralTraversalOfMatrix(_ matrix: [[Int]]) -> [Int]? {
    
    var row = matrix.count
    guard var col = matrix.first?.count else { return nil}
    
    var ans: [Int] = []
    
    var top = 0
    var left = 0
    var bottom = row - 1
    var right = col - 1
    var direction = 0
    
    while (top <= bottom && left <= right) {
        if direction == 0 {
                      //Direction 0: Moving Left to Right

                      for i in left...right {
                          ans.append(matrix[top][i])
                      }
                      //Move Top to Next Row
                      top += 1
                  } else if direction == 1 {
                      //Moving Top To Bottom

                      for i in top...bottom {
                          ans.append(matrix[i][right])
                      }
                      //Move Right to Left Side by 1
                      right -= 1
                  } else if direction == 2 {
                      //Moving right to Left

                      for i in (left...right).reversed() {
                          ans.append(matrix[bottom][i])
                      }
                      bottom -= 1
                  } else if direction == 3 {
                      //Moving Bottom To Top
                      
                    for i in (top...bottom).reversed() {
                          ans.append(matrix[i][left])
                      }

                      left += 1
                  }

                  direction = (direction+1)%4
    }
    
    return ans
}

//let matrix = [[1, 2, 3, 4],
//              [5, 6, 7, 8],
//              [9, 10, 11, 12],
//              [13, 14, 15, 16]]

let matrix = [[1,2,3],[4,5,6],[7,8,9]]
spiralTraversalOfMatrix(matrix)
