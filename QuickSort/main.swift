//
//  main.swift
//  QuickSort
//
//  Created by Oleg Popadko on 9/20/14.
//  Copyright (c) 2014 Oleg Popadko. All rights reserved.
//

import Foundation

func mySort(instanceList: Slice<Int>) -> Slice<Int> {
    var i = 0, l = 0, r = instanceList.count - 1
    var j = r
    var list = instanceList
    var m = list[j]
    do {
        while list[l] < m {
            l++
        }
        while list[r] > m {
            r--
        }
        
        if (l < r) {
            let tmp = list[l]
            list[l] = list[r]
            list[r] = tmp
        } else if (l <= r) {
            l++
            r--
        }
    } while l <= r
    
    if (r > i) {
        list[i...r] = mySort(list[i...r])
    }
    if (l < j) {
        list[l...j] = mySort(list[l...j])
    }
    return list
}

var list = [9, 7, 56, 5, 45, 456, 34, 1, 0, 10]
println(list)
var index = list.count - 1
println(mySort(Slice<Int>(list)))

list = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
println(list)
index = list.count - 1
println(mySort(Slice<Int>(list)))