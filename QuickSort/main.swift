//
//  main.swift
//  QuickSort
//
//  Created by Oleg Popadko on 9/20/14.
//  Copyright (c) 2014 Oleg Popadko. All rights reserved.
//

import Foundation

func mySort(instanceList: [Int], i: Int, j: Int) -> [Int] {
    var l = i, r = j
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
        list = mySort(list, i, r)
    }
    if (l < j) {
        list = mySort(list, l, j)
    }
    return list
}

var list = [9, 7, 56, 5, 45, 456, 34, 1, 0, 10]

println(list)
println(mySort(list, 0, list.count - 1))