//
//  SwiftUIView4.swift
//  6 Animations for iOS 17
//
//  Created by Marcin Frydrych on 06/01/2024.
//

import SwiftUI

struct SwiftUIView4: View {
    
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .foregroundStyle(.white)
        .animation(nil/*.default*/, value: enabled)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(.spring(duration: 1, bounce: 0.6), value: enabled)
    }
}

#Preview {
    SwiftUIView4()
}
