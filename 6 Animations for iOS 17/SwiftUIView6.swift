//
//  SwiftUIView6.swift
//  6 Animations for iOS 17
//
//  Created by Marcin Frydrych on 06/01/2024.
//

import SwiftUI

struct SwiftUIView6: View {
    @State private var isShowinRed = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    isShowinRed.toggle()
                }
            }
            
            if isShowinRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .scale))
            }
        }
    }
}

#Preview {
    SwiftUIView6()
}
