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
        // write test the whatever property about the sum but add logs to know the value of the received numbers
    }

    func testModifyNumberOfExecutions() {
        // write a test in order to ensure the the number of executions
        // TIP: Check the paramters accepted by property to change the number of executions
    }

    func testShrinkByMakingATestFail() {
        //write a property that fails and check how the shrink works and what information is provided by the library
        //TIP: forAll method return a Prop that allows us to capture the error
    }

    func testProvidingSeedShouldRepeatTheExecution() {
        //property method allow use to provide arguments: CheckerArguments. Let's take a look to replay field :)
        //based on: https://github.com/typelift/SwiftCheck/blob/master/Tests/SwiftCheckTests/ReplaySpec.swift#L15
    }

    func testCustomGenerator() {
        // write a custom generator that only generate a very limited range of values.
        // Tip: You can use an already defined generator or just implement yours. I'll do mine :).
        // Pay attention to MAP method to implement a non-restrictive generator.
        // Here you'll find how to implement a custom generator: https://github.com/typelift/SwiftCheck#custom-types.
    }

}

