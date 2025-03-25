//
//  ContentView.swift
//  BusinessCardSample
//
//  Created by Rahul Padmakumar on 25/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.08, green: 0.62, blue: 0.52, opacity: 1.0)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Image("personal_avatar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150.0, height: 150.0)
                        .clipShape(Circle())
                        .overlay {
                            Circle().stroke(
                                Color.white,
                                lineWidth: 5
                            )
                        }
                    Text("Dev Engineer")
                        .foregroundColor(.white)
                        .bold()
                        .font(Font.custom("Pacifico-Regular", size: 40))
                    Text("Full Stack Mobile Developer")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                    
                    Divider()
                    
                    InfoView(
                        imageName: "phone.fill",
                        text: "1234567899"
                    )
                    
                    InfoView(
                        imageName: "email",
                        text: "dev@tcompany.com"
                    )
                    
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

struct InfoView: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .frame(height: 50.0)
            .foregroundColor(.white)
            .overlay {
                HStack{
                    Image(systemName: imageName)
                        .foregroundColor(.blue)
                    Text(text)
                        .foregroundColor(.black)
                }
            }
    }
}
