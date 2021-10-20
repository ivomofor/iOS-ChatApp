//
//  ContentView.swift
//  ChatApp
//
//  Created by macbook on 2021/10/09.
//

import SwiftUI

struct ContentView: View {
    @State var newMessageInput = ""
    @ObservedObject var keyboardResponder = KeyboardResponder()
    var body: some View {
        NavigationView {
            VStack {
                ForEach(sampleConversation, id: \.messageId){ message in
                    ChatRow(message: message)
                }
                Spacer()
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(lightGreyColor, lineWidth: 2)
                        .padding()
                    HStack {
                        TextField("New message...", text:$newMessageInput, onCommit: {print("Send message")})
                            .padding(30)
                        Button(action: {print("Send message")}, label: {
                            Image(systemName: "paperplane")
                                .imageScale(.large)
                                .padding(30)
                        })
                    }
                }
                .frame(height: 70)
                .offset(y: -10)
                //.offset(y: -keyboardResponder.currentHeight)
            }
            .navigationBarTitle("Chat App")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
