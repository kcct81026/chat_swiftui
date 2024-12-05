//
//  MessageBubble.swift
//  ChatAppDemo
//
//  Created by Kcct on 04/12/2024.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State private var showTime = false
    
    var body: some View {
        VStack(alignment: message.received ? .leading : .trailing){
            HStack{
                Text(message.text)
                    .padding()
                    .background(message.received ?
                                Color("Gray") : Color("Peach"))
                    .cornerRadius(20)
                
            }
            .frame(
                maxWidth: 300,
                alignment: message.received ? .leading : .trailing
            )
            .onTapGesture {
                showTime.toggle()
            }
            if showTime{
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2).foregroundStyle(Color.gray)
                    .padding(message.received ? .leading : .trailing, 15)
            }
        }
        .frame(
            maxWidth: .infinity,
            alignment: message.received ? .leading : .trailing
        )
        .padding(message.received ? .leading : .trailing)
        .padding(.horizontal, 10)
    }
}

#Preview {
    MessageBubble(message: Message(id: "12", text: "abc", received: true, timestamp: Date()))
}
