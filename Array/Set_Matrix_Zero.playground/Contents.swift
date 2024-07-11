/*
 Set Matrix Zero
 Problem Statement: Given a matrix if an element in the matrix is 0 then you will have to set its entire column and row to 0 and then return the matrix.

 Time Complexity: O(2*(N*M)), where N = no. of rows in the matrix and M = no. of columns in the matrix.
 Reason: We are traversing the entire matrix 2 times and each traversal is taking O(N*M) time complexity.

 Space Complexity: O(N) + O(M), where N = no. of rows in the matrix and M = no. of columns in the matrix.
 Reason: O(N) is for using the row array and O(M) is for using the col array.
 */


func setMatrixToZero(_ matrix: inout [[Int]]) {
    
    let m = matrix.count
    let n = matrix[0].count
    var row =  Array(repeating: 0, count: m)
    var col = Array(repeating: 0, count: n)
    
    for i in 0..<m {
        for j in 0..<n {
            
            if matrix[i][j] == 0{
                row[i] = 1
                col[j] = 1
            }
        }
    }
    
    for i in 0..<m {
        for j in 0..<n {
            if row[i] == 1 || col[j] == 1 {
                matrix[i][j] = 0
            }
        }
    }
}


var matrix =  [[0,1,2,0],[3,4,5,2],[1,3,1,5]] //[[1, 1, 1], [1, 0, 1], [1, 1, 1]]
setMatrixToZero(&matrix)

print("*************")
// printing of matrix.
for i in 0..<matrix.count {
    for j in 0..<(matrix.first?.count ?? 0) {
        print(matrix[i][j])
     }
}

