//
//  ContentView.swift
//  Animations
//
//  Created by Keto Nioradze on 23.12.23.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimating = false

    var body: some View {
        VStack {

            Text("TBC IT Academy")
                .font(.system(size: isAnimating ? 30 : 18))
                .foregroundColor(isAnimating ? .red : .cyan)
                .scaleEffect(isAnimating ? 1.8 : 1)
                .animation(
                    Animation.easeInOut(duration: 1.5)
                        .repeatForever(autoreverses: true)
                )
                .onAppear {
                    self.isAnimating = true
                }
        }
    }
}

#Preview {
    ContentView()
}
