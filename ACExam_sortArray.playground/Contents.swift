
import UIKit

func sortArray(array1: [Int], array2: [Int]) -> [Int] {
    
    var arrayOne = array1
    var arrayTwo = array2
    var resultArray = [0,1]
    
    for i in 0..<arrayOne.count {
        for j in 0..<arrayTwo.count {
            if arrayOne[i] == arrayTwo[j] {
                arrayOne.remove(at: i)
            }
        }
    }
    
    resultArray = array2
    
    for i in 0..<arrayOne.count {
        resultArray.append(arrayOne[i])
    }
    
    for i in 0..<resultArray.count-2 {
        for j in 0..<resultArray.count - 2 - i {
            var tmp = 0
            if resultArray[j] > resultArray [j + 1] {
                tmp = resultArray[j + 1]
                resultArray[j + 1] = resultArray[j]
                resultArray[j] = tmp
            }
        }
    }

    return resultArray
}

sortArray(array1: [1,5,3], array2: [2,4,3])


