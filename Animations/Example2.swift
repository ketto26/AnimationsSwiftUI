//
//  Example2.swift
//  Animations
//
//  Created by Keto Nioradze on 24.12.23.
//

import SwiftUI

struct ContentView2: View {
    @State private var isAnimating = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isAnimating.animation()) {
                Text("Animate Text")
            }
            .padding()
            
            Text("TBC IT Academy")
                .font(.system(size: isAnimating ? 35 : 20))
                .foregroundColor(isAnimating ? .indigo : .pink)
                .animation(
                    Animation.easeInOut(duration: 1.5)
                        .repeatForever(autoreverses: true)
                )
        }
        .padding()
    }
}


#Preview {
    ContentView2()
}
