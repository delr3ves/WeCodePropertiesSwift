//
//  Chat.swift
//  WeCodePropertiesSwift
//
//  Created by Sergio Arroyo Cuevas on 21/02/2019.
//  Copyright © 2019 delr3ves. All rights reserved.
//

import Foundation

public protocol Chat {

    func send(message: String)

}

struct StdoutChat: Chat {

    func send(message: String) {
        print("-------->" + message)
    }
}
