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
    func sum(_  op1: Int, _ op2: Int) -> Int {
        return op1 + op2
    }

    func testAssociativeProperty() {
        property("should keep the associative property")
            <- forAll { (num1: Int, num2: Int, num3: Int) in
                return self.sum(self.sum(num1, num2), num3)
                    == self.sum(num1, self.sum(  num2, num3))
        }

        property("Sum keep the commutative property")
            <- forAll { (num1: Int, num2: Int) in
                return self.sum(  num1, num2) == self.sum(  num1, num2)
        }

        property("Sum have an identity value")
            <- forAll { (num1: Int) in
                return self.sum(  num1, 0) == num1
        }
    }

    func testSumWithSpecificValues() {
        XCTAssertEqual(sum(  1, 4), 5)
        XCTAssertEqual(sum(  4, 5), 9)
        XCTAssertEqual(sum(  0, 0), 0)
        XCTAssertEqual(sum(  -1, -5), -6)
        XCTAssertEqual(sum(  1, -5), -4)
        XCTAssertEqual(sum(  -5, 1), -4)
    }
}
