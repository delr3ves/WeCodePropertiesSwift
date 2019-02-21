//
//  PlayingWithLibrarySpec.swift
//  WeCodePropertiesSwiftTests
//
//  Created by Sergio Arroyo Cuevas on 21/02/2019.
//  Copyright © 2019 delr3ves. All rights reserved.
//

import Foundation
import XCTest
import SwiftCheck

@testable import WeCodePropertiesSwift

class PlayingWithLibrarySpec: XCTestCase {

    func testAddingLogsToSeeHowItExecutes() {
        property("add logs to know how it executes")
            <- (forAll { (_: Int, _: String) in
                return true
        }).verbose
    }

    func testModifyNumberOfExecutions() {
        var executed = 0
        let expectedExectutions = 25
        property("allow us to modify the number of executions",
                 arguments: CheckerArguments(maxAllowableSuccessfulTests: expectedExectutions))
            <- (forAll { (_: Int) in
                executed += 1
                return true
            })
        XCTAssertEqual(executed, expectedExectutions)
    }

    func testShrinkByMakingATestFail() {
        property("make a test fail in order to see how shrink works")
            <- (forAll { (anyNumber: Int) in
                return anyNumber == 0
                }).verbose.expectFailure
    }

    func testProvidingSeedShouldRepeatTheExecution() {
        //based on: https://github.com/typelift/SwiftCheck/blob/master/Tests/SwiftCheckTests/ReplaySpec.swift#L15
        let genWithSeed = CheckerArguments(replay: .some((StdGen(2353135, 233), 1234)))

        var usedArgsForProperty1: [Int] = []
        property("execution 1 with seeed", arguments: genWithSeed)
            <- (forAll { (anyNumber: Int) in
                usedArgsForProperty1.append(anyNumber)
                return true
            })

        var usedArgsForProperty2: [Int] = []
        property("execution 2 with seeed", arguments: genWithSeed)
            <- (forAll { (anyNumber: Int) in
                usedArgsForProperty2.append(anyNumber)
                return true
            })

        XCTAssertEqual(usedArgsForProperty1, usedArgsForProperty2)
    }

    func testCustomGenerator() {
        func range(min: Int, max: Int) -> Gen<Int> {
            return Int.arbitrary.map { generated in
                return (abs(generated) % (max - min)) + min
            }
        }
        property("pass when a generator is limited but not restrictive")
            <- (forAll(range(min: 10, max: 15)) { (anyNumber: Int) in
                return anyNumber >= 10 && anyNumber < 15
            })
    }

}

