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
    func sum(op1: Int, op2: Int) -> Int {
        return op1 + op2
    }

    func testAssociativeProperty() {
        property("should keep the associative property")
            <- forAll { (num1: Int, num2: Int, num3: Int) in
                return self.sum(op1: self.sum(op1: num1, op2: num2), op2: num3)
                    == self.sum(op1: num1, op2: self.sum(op1: num2, op2: num3))
        }

        property("Sum keep the commutative property")
            <- forAll { (num1: Int, num2: Int) in
                return self.sum(op1: num1, op2: num2) == self.sum(op1: num1, op2: num2)
        }

        property("Sum have an identity value")
            <- forAll { (num1: Int) in
                return self.sum(op1: num1, op2: 0) == num1
        }
    }

    func testSumWithSpecificValues() {
        XCTAssertEqual(sum(op1: 1, op2: 4), 5)
        XCTAssertEqual(sum(op1: 4, op2: 5), 9)
        XCTAssertEqual(sum(op1: 0, op2: 0), 0)
        XCTAssertEqual(sum(op1: -1, op2: -5), -6)
        XCTAssertEqual(sum(op1: 1, op2: -5), -4)
        XCTAssertEqual(sum(op1: -5, op2: 1), -4)
    }
}
