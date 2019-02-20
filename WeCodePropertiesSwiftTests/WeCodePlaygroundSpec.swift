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
    func testAll() {
        property("True should pass")
            <- forAll { (_: Int) in
                return true
        }

    }
}
