//
//  KarumiHQs.swift
//  WeCodePropertiesSwift
//
//  Created by Sergio Arroyo Cuevas on 21/02/2019.
//  Copyright © 2019 delr3ves. All rights reserved.
//

import Foundation

public final class KarumiHQs {

    fileprivate let chat: Chat

    var maxibonsLeft: Int

    fileprivate var shouldBuyMoreMaxibons: Bool {
        //TODO
        return false
    }

    public init(chat: Chat) {
        self.maxibonsLeft = 10
        self.chat = chat
    }

    public convenience init() {
        self.init(chat: StdoutChat())
    }

    public func openFridge(_ developer: Developer) {
        //and grab some maxibons :)
    }

    public func openFridge(_ developers: [Developer]) {
        //and grab some maxibons :)
    }

}
