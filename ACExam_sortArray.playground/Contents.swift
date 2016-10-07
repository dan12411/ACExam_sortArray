
import UIKit

func sortArray(array1: [Int], array2: [Int]) -> [Int] {
    
    var arrayOne = array1
    var arrayTwo = array2
    var resultArray: [Int]?
    
    for i in 0..<arrayOne.count {
        for j in 0..<arrayTwo.count {
            if arrayOne[i] == arrayTwo[j] {
                arrayOne.remove(at: i)
            }
        }
    }
    
    resultArray = array2
    
    if arrayOne[0] < arrayTwo[0] {
        resultArray?.insert(arrayOne[0], at: 0)
        arrayOne.remove(at: 0)
    }
    
    for i in 0..<arrayOne.count {
        resultArray?.append(arrayOne[i])
    }
    
    for i in 0..< resultArray.count {
        while resultArray[i] > resultArray [i + 1] {
            resultArray?.append(resultArray[i])
            resultArray?.remove(at: i)
        }
    }

    return resultArray!
}

sortArray(array1: [1,5,3], array2: [2,4,3])


