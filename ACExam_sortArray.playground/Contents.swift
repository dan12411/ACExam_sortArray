
import UIKit

func sortArray(array1: [Int], array2: [Int]) -> [Int] {
    
    var array3 = array1 + array2
    var arrayDict = [Int:Int]()
    for n in array3 {
        if arrayDict[n] == nil {
            arrayDict[n] = 1
        } else {
            arrayDict[n] = arrayDict[n]! + 1
        }
    }
    
//    arrayDict
//    
//    for i in arrayDict.keys {
//        if arrayDict[i]! >= 2 {
//            arrayDict.removeValue(forKey: i)
//        }
//    }
    
    array3 = Array(arrayDict.keys)

    
    for i in 0 ..< array3.count-2 {
        for j in 0 ..< array3.count - 2 - i {
            var tmp = 0
            if array3[j] > array3[j + 1] {
                tmp = array3[j + 1]
                array3[j + 1] = array3[j]
                array3[j] = tmp
            }
        }
    }

    return array3
}

// 用記分板再還原消重複值
// 最後用氣泡排序(bubble sort)

sortArray(array1: [1,5,3,1], array2: [2,4,3])


/// Eric's solution ///
func sortArray2(array1: [Int], array2: [Int]) -> [Int] {
    var array3 = array1 + array2
    array3 = Array(Set(array3))
    for i in 0 ..< array3.count - 1 {
        for j in 0 ..< array3.count - 1 {
            if (array3[i] > array3[j + 1] && i < j + 1) {
                swap(&array3[i], &array3[j + 1])
            }
        }
    }
    return array3
}

// 集合(Set)用來儲存相同型別且沒有順序、沒有重複的值，當順序不重要或是需要每個值只能出現一次時，可以選擇使用Set

sortArray2(array1: [2,5,1,2,99,3,7,33,222], array2: [1,1,111,999,234,23,44,11])
sortArray(array1: [2,5,1,2,99,3,7,33,222], array2: [1,1,111,999,234,23,44,11])


