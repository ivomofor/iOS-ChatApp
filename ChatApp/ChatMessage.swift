//
//  ChatMessage.swift
//  ChatApp
//
//  Created by macbook on 2021/10/09.
//

import Foundation

class ChatMessage {
    let messageText: String
    let usrename: String
    let isMe: Bool
    let messageId = UUID()
    
    init(messageText: String, username: String, isMe: Bool) {
        self.messageText = messageText
        self.usrename = username
        self.isMe = isMe
    }
}
 let sampleConversation = [
    ChatMessage(messageText: "Hello how are you?", username: "Me", isMe: true),
    ChatMessage(messageText: "I'm fine and you?", username: "Another user", isMe: false),
    ChatMessage(messageText: "I'm fine as well. Thanks for asking. What are you doing right now?", username: "Me", isMe: true)
 ]
