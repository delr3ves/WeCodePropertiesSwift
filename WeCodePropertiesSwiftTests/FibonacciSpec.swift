//
//  FibonacciSpec.swift
//  WeCodePropertiesSwiftTests
//
//  Created by Sergio Arroyo Cuevas on 21/02/2019.
//  Copyright © 2019 delr3ves. All rights reserved.
//

import Foundation
import XCTest
import SwiftCheck

@testable import WeCodePropertiesSwift

class FibonacciSpec: XCTestCase {

    func fibonacci(_ number: Int) -> Int {
        var aux1 = 1
        var aux2 = 1
        guard number > 1 else { return aux1 }

        (2...number).forEach { _ in
            (aux1, aux2) = (aux1 + aux2, aux1)
        }
        return aux1
    }

    func testFibonacci() {
        property("ensure the most important property")
            <- forAll { (_: Int) in
                // please, find the property and test it.
                // The implementation of fibonacci is slow so you can check what happen with big numbers ;)
                true
        }
    }
}

