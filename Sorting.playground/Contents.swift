//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var unsorted:[Int] = []
let maxNum:UInt32 = 500
let minNum = 0
for _ in 0..<20 {
    let n = Int(arc4random_uniform(maxNum)) + minNum
    unsorted.append(n)
}

print("unsorted: \(unsorted)\n")

func inserSort<T:Comparable>(unsorted:[T]) -> [T] {
    func insert(_ a:inout [T], pos:Int, value:T) {
        var i = pos - 1
        while i >= 0 && a[i] > value {
            a[i+1] = a[i]
            i = i-1
        }
        a[i+1] = value
    }
    
    var a = unsorted
    for i in 0..<unsorted.count {
        insert(&a, pos: i, value: a[i])
        print(a)
    }
    return a
}

let sortedByInsertSorted = inserSort(unsorted: unsorted)
print("sortedByInsertSorted: \(sortedByInsertSorted)")
