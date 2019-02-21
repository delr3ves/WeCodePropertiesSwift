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

class CollectionsSpec: XCTestCase {

    func testAddition() {
        property("contain one more element after insertion")
        <- forAll { (_: [Int]) in
                return true
        }

        property("contain the inserted element")
        <- forAll { (_: [Int]) in
                return true
        }
    }

    func testDeletion() {
        property("have an element less after deletion")
        <- forAll { (_: [Int]) in
                return true
        }

        property("not contain the removed element")
        <- forAll { (_: [String]) in
                return true
        }
    }

    func testConcatenation() {
        property("not contain the removed element")
        <- forAll { (_: [String]) in
                return true
        }

    }

    func testSetAndDistinct() {
        property("contain the items of the two collections after a concatenation")
            <- forAll { (_: [String]) in
                return true
        }
    }
}
