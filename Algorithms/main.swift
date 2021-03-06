//
//  main.swift
//  Algorithms
//
//  Created by Oleg Popadko on 9/20/14.
//  Copyright (c) 2014 Oleg Popadko. All rights reserved.
//

import Foundation

func quickSort(instanceList: Slice<Int>) -> Slice<Int> {
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
            list = Slice<Int>(swap([Int](list), l, r))
        } else if (l == r) {
            l++
            r--
        }
    } while l <= r
    
    if (r > i) {
        list[i...r] = quickSort(list[i...r])
    }
    if (l < j) {
        list[l...j] = quickSort(list[l...j])
    }
    return list
}

func bubble(instanceList: [Int]) -> [Int] {
    var list = instanceList
    for var i = 0; i < list.count; i++ {
        for var j = i + 1; j < list.count; j++ {
            if (list[i] > list[j]) {
                list = swap(list, i, j)
            }
        }
    }
    return list
}

func insert(instanceList: [Int]) -> [Int] {
    var list = instanceList
    for var i = 1; i < list.count; i++ {
        var currentElement = list[i]
        var prev = i - 1
        while prev >= 0 && currentElement < list[prev] {
            list = swap(list, prev + 1, prev)
            prev--
        }
    }
    return list
}

func swap(instanceList: [Int], i: Int, j: Int) -> [Int] {
    var list = instanceList
    let tmp = list[j]
    list[j] = list[i]
    list[i] = tmp
    return list
}

var list = [9, 7, 56, 5, 45, 456, 34, 1, 0, 10]
println(list)
println(quickSort(Slice<Int>(list)))
println(bubble(list))
println(insert(list))

list = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
println(list)
println(quickSort(Slice<Int>(list)))
println(bubble(list))
println(insert(list))
