//
//  ContentView.swift
//  Captivating Mind Radio
//
//  Created by Mike Harrison on 11/9/23.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        
        ZStack {
    
            VStack {
                
                
                
                Image("headphone")
                    .padding(.top,75)
                    .padding(.leading, CGFloat(25))
                    .frame(width: 100,height: 100)
                Text("Welcome to")
                    .padding(.top,150)
                    .foregroundS; Backyle(.blue)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Text("Captivating Mind Radio")
                    .font(.system(size: 50))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.yellow.opacity(1))
                    .padding()
                player()
                
                
            }
            
        }
        
        .padding()
    }
    
}

#Preview {
    ContentView()
}
