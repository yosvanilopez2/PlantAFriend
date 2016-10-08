//
//  Plant.swift
//  PlantAFriend
//
//  Created by Yosvani Lopez on 10/8/16.
//  Copyright © 2016 Yosvani Lopez. All rights reserved.
//

import Foundation
import Messages
import SwiftyJSON
class Plant {
    private var _messages:[MSMessage]
    private var _sentiments: Float
    init(messages: [MSMessage]) {
        self._messages = messages
        self._sentiments = getSentiment(messages: _messages)
    }
    
    
    func getSentiment(messages: [MSMessage]) -> Float {
        var conversation = [String]()
        for message in messages {
            if let msgText =  message.summaryText {
            conversation.append(msgText)
            }
        }
        
    }
}
