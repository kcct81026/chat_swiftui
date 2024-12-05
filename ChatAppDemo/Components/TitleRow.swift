//
//  TitleRow.swift
//  ChatAppDemo
//
//  Created by Kcct on 04/12/2024.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://i.pinimg.com/736x/72/88/1f/72881f7a89f668dfcc81acb6ffb971bd.jpg")
    var name = "Codi"
    
    var body: some View {
        HStack(spacing: 20){
            AsyncImage(url: imageUrl){ image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading){
                Text(name)
                    .font(.title2).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundStyle(Color.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundStyle(Color.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
    }
}

#Preview {
    TitleRow()
        .background(Color("Peach"))
}
