//
//  ContentView.swift
//  ChatAppDemo
//
//  Created by Kcct on 04/12/2024.
//

import SwiftUI
//https://github.com/firebase/firebase-ios-sdk
struct ContentView: View {
    
    @StateObject var messagesManager = MessageManager()
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                
                ScrollViewReader { proxy in 
                    ScrollView{
                        ForEach(messagesManager.messages, id: \.id){ message in
                            MessageBubble(message: message)
                        }
                    }
                    .padding(.top, 10)
                    .background(.white)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                    .onChange(of: messagesManager.lastMessageId) { oldValue, newValue in
                        withAnimation {
                            proxy.scrollTo(newValue, anchor: .bottom)
                        }
                    }

                }
            }
            .background(Color("Peach"))
            
            MessageField()
                .environmentObject(messagesManager)
        }
    }
}

#Preview {
    ContentView()
}
