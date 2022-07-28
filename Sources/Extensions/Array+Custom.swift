//
//  Array-Custom.swift
//  evio
//
//  Created by Tiago Moreira on 28/01/2022.
//  Copyright © 2022 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation

public extension Array {
    
    func splitSorted(by condition: (Element, Element) -> (Bool)) -> [[Element]] {
        var result = [[Element]]()
        var start = startIndex
        while start != endIndex {
            var end = start
            repeat {
                end += 1
            } while end != endIndex && condition(self[end - 1], self[end])
            result.append(Array(self[start..<end]))
            start = end
        }
        return result
    }
    
    /// # METHOD THAT DIVIDES AN ARRAY INTO SMALLER CHUNKS
    /// - Parameter size: the size for each chunk for the array
    /// - Returns: an array that contains all chunks from the original array
    func chunked(into size: Int) -> [[Element]] {
        // we ask the stride function to start from the beginning of the array until the end dividing it by the size received
        // then we map those values into a new array
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
    
    func toSet<T: Hashable>(_ transform: (Element) -> T) -> Set<T> {
        var result = Set<T>()
        for item in self {
            result.insert(transform(item))
        }
        return result
    }
    
}
