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
        return maxibonsLeft <= 2
    }
    
    public init(chat: Chat) {
        self.maxibonsLeft = 10
        self.chat = chat
    }
    
    public convenience init() {
        self.init(chat: StdoutChat())
    }
    
    public func openFridge(_ developer: Developer) {
        openFridge([developer])
    }
    
    public func openFridge(_ developers: [Developer]) {
        developers.forEach { developer in
            grabMaxibons(developer)
            if shouldBuyMoreMaxibons {
                notifyWeShouldBuyMaxibons(developer)
                buyMoreMaxibons()
            }
        }
    }
    
    fileprivate func notifyWeShouldBuyMaxibons(_ developer: Developer) {
        let message = "Hi guys, I'm \(developer). We need more maxibons!"
        chat.send(message: message)
    }
    
    fileprivate func buyMoreMaxibons() {
        maxibonsLeft += 10
    }
    
    fileprivate func grabMaxibons(_ developer: Developer) {
        maxibonsLeft -= developer.numberOfMaxibonsToGet
    }
}
