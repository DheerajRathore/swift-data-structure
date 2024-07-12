/*
   Rotate Matrix.
   Problem Statement: Given a matrix, your task is to rotate the matrix 90 degrees clockwise.
   Rotate matrix 90 degrees anticlockwise
   Step 1: Transpose the matrix. (transposing means changing columns to rows and rows to columns)
   Step 2: Reverse each row of the matrix.
 
 Time Complexity: O(N*N) + O(N*N).One O(N*N) is for transposing the matrix and the other is for reversing the matrix.
 Space Complexity: O(1).
 */


func rotateMatrix(_ matrix: inout [[Int]]) {
        let n = matrix.first?.count ?? 0
        //transposing the matrix
        for i in 0..<n {
            for j in i..<n {
                //swap(&matrix[i][j], &matrix[j][i]);
                let temp =  matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = temp
            }
        }
        //reversing each row of the matrix
    print(matrix)
    for i in 0..<n {
        reverse(&matrix[i], 0 , n-1)
    }
}


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

var matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
rotateMatrix(&matrix)
