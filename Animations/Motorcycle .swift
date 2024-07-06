//
//  Motorcycle .swift
//  Animations
//
//  Created by Ваня Науменко on 25.02.24.
//

import SwiftUI

struct Motorcycle_: View {
    @State private var animationAmount = 0.0
    @State private var moto = [String].self
    var body: some View {
        Button(action: {
            withAnimation {
                animationAmount += 360
            }
            withAnimation(.spring(duration: 1, bounce: 0.5)) {
                animationAmount += 360
            }
        }, label: {
            Image("MotoTwo")
                .resizable()
                .scaledToFit()
                .padding()
                .foregroundStyle(.white)
//                .clipShape(.buttonBorder)
                .rotation3DEffect(
                    .degrees(animationAmount),
                    axis: (x: 0, y: 1, z: 0)
                )
                .shadow(color: .blue, radius: 20)
        })
        
    }
}

#Preview {
    Motorcycle_()
}
