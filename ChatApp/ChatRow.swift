//
//  ChatRow.swift
//  ChatApp
//
//  Created by macbook on 2021/10/09.
//

import SwiftUI
let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct ChatRow: View {
    var message: ChatMessage
    var body: some View {
        HStack {
            if message.isMe {
                Spacer()
            }
            VStack(alignment: .leading, content: {
                Text(message.usrename)
                    .font(.footnote)
                    .foregroundColor(message.isMe ? lightGreyColor : Color.gray)
                Text(message.messageText)
            })
            .padding(10)
            .background(message.isMe ? Color.blue : lightGreyColor)
            .frame(maxWidth: 280, alignment: self.message.isMe ? .trailing : .leading)
            if !message.isMe {
                Spacer()
            }
        }.padding()
    }
}

struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatRow(message: sampleConversation[2])
    }
}
