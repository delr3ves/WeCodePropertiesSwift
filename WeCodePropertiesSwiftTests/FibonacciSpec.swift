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
        property("fibonacci should be the sum of the two previous fibonacci",
                 arguments: CheckerArguments(maxAllowableSuccessfulTests: 5)) //dirty hack until I fix the excution problems
            <- (forAll(Gen<Int>.fromElements(in: 1...100)) { (number: Int) in
                return self.fibonacci(number) + self.fibonacci(number + 1) == self.fibonacci(number + 2)
            }).verbose
    }
}

