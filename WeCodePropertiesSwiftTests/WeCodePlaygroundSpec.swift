//
//  WeCodePlaygroundSpec.swift
//  WeCodePropertiesSwiftTests
//
//  Created by Sergio Arroyo Cuevas on 20/02/2019.
//  Copyright © 2019 delr3ves. All rights reserved.
//

import Foundation
import XCTest
import SwiftCheck

@testable import WeCodePropertiesSwift

class WeCodePlaygroundSpec: XCTestCase {
    func sum(a: Int, b: Int) -> Int {
        return a + b
    }

    func testAssociativeProperty() {
        property("should keep the associative property")
            <- forAll { (a: Int, b: Int, c: Int) in
                return self.sum(a: self.sum(a: a, b: b), b: c) == self.sum(a: a, b: self.sum(a: b, b: c))
        }

        property("Sum keep the commutative property")
            <- forAll { (a: Int, b: Int) in
                return self.sum(a: a, b: b) == self.sum(a: b, b: a)
        }

        property("Sum have an identity value")
            <- forAll { (a: Int) in
                return self.sum(a: a, b: 0) == a
        }

    }

    func testSumWithSpecificValues() {
        XCTAssertEqual(sum(a: 1, b: 4), 5)
        XCTAssertEqual(sum(a: 4, b: 5), 9)
        XCTAssertEqual(sum(a: 0, b: 0), 0)
        XCTAssertEqual(sum(a: -1, b: -5), -6)
        XCTAssertEqual(sum(a: 1, b: -5), -4)
        XCTAssertEqual(sum(a: -5, b: 1), -4)
    }
}
