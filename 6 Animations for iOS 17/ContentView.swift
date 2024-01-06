//
//  ContentView.swift
//  6 Animations for iOS 17
//
//  Created by Marcin Frydrych on 06/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap me") {
//            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
//        .blur(radius: (animationAmount - 1) * 3)
//        .scaleEffect(animationAmount)
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeOut(duration: 1)
                        .repeatForever(autoreverses: false),
                    value: animationAmount
                )
        )
        .onAppear {
            animationAmount = 2
        }
//        .animation(
//            .easeInOut(duration: 2)
//                .repeatForever(autoreverses: true),
//            value: animationAmount
//        )
    }
}

#Preview {
    ContentView()
}
