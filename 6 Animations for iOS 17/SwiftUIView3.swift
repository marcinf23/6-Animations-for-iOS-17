//
//  SwiftUIView3.swift
//  6 Animations for iOS 17
//
//  Created by Marcin Frydrych on 06/01/2024.
//

import SwiftUI

struct SwiftUIView3: View {
    
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me") {
            withAnimation(.spring(duration: 1, bounce: 0.5)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount),
            axis: (x: 0.0, y: 1.0, z: 0.0)
        )
//        .animation(.easeInOut(duration: 1), value: animationAmount)
    }
}

#Preview {
    SwiftUIView3()
}
