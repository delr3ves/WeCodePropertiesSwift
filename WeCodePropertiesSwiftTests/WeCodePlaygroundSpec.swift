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
            <- forAll { (_: Int, _: Int, _: Int) in
                //TODO test the associative property
                return true
        }

        property("Sum keep the commutative property")
            <- forAll { (_: Int, _: Int) in
                //TODO test the commutative property
                return true
        }

        property("Sum have an identity value")
            <- forAll { (_: Int) in
                //TODO test the identity property
                return true
        }

    }

    func testSumWithSpecificValues() {

    }
}
