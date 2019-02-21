//
//  CollectionsSpec.swift
//  WeCodePropertiesSwiftTests
//
//  Created by Sergio Arroyo Cuevas on 21/02/2019.
//  Copyright © 2019 delr3ves. All rights reserved.
//

import Foundation
import XCTest
import SwiftCheck

@testable import WeCodePropertiesSwift

extension Array where Element: Equatable {
    func removeAllOccurrences(_ item: Element) -> Array {
        return self.filter {value in return value != item}
    }
    func countAllOccurrences(_ item: Element) -> Int {
        return self.filter {value in return value == item}.count
    }
    func containAll(_ items: [Element]) -> Bool {
        return items.filter {value in return !self.contains(value) }.count == 0
    }

}

class CollectionsSpec: XCTestCase {

    func testAddition() {
        property("contain one more element after insertion")
            <- forAll { (list: [String], item: String) in
                let listWithNewItem = list + [item]
                return listWithNewItem.count == list.count + 1
        }

        property("contain the inserted element")
            <- forAll { (list: [String], item: String) in
                let listWithNewItem = list + [item]
                return listWithNewItem.contains(item)
        }
    }

    func testDeletion() {
        property("have an element less after deletion")
            <- forAll { (list: [Int], item: Int) in
                let numberOfOccurrencesOfItem = list.countAllOccurrences(item)
                let listWithNewItem = list + [item]
                let listWithNoItemsAtAll = listWithNewItem.removeAllOccurrences(item)
                return listWithNoItemsAtAll.count == list.count - numberOfOccurrencesOfItem
        }

        property("not contain the removed element")
            <- forAll { (list: [String], item: String) in
            let listWithNewItem = list + [item]
            let listWithNoItemsAtAll = listWithNewItem.removeAllOccurrences(item)
            return !listWithNoItemsAtAll.contains(item)
        }
    }

    func testConcatenation() {
        property("contain the items of the two collections after a concatenation")
            <- forAll { (list1: [String], list2: [String]) in
                let bigList = list1 + list2
                return bigList.containAll(list1) && bigList.containAll(list2)
        }

    }

    func testSetAndDistinct() {
        property("set does not contains duplicated elements")
            <- forAll { (list: [String]) in
                let asSet = Array(Set(list))
                return !list.contains {item in return asSet.countAllOccurrences(item) != 1}
        }
    }
}
