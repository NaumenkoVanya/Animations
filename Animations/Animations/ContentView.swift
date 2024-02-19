//
//  ContentView.swift
//  Animations
//
//  Created by Ваня Науменко on 19.02.24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    var body: some View {
        // MARK: Создание явной анимации

        Button("Tap ME") {
//            withAnimation {
//                animationAmount += 360
//            }
            withAnimation(.spring(duration: 1, bounce: 0.5)) {
                animationAmount += 360
            }
        }
            .padding(50)
            .background(Image("iconMotorbike")
                .resizable()
                .scaledToFit())
            .foregroundStyle(.white)
            .clipShape(.circle)
            .rotation3DEffect(
                .degrees(animationAmount),
                axis: (x: 0, y: 1, z: 0)
            )

        // MARK: Aнимация привязок

//        VStack {
//            Spacer()
//            Stepper("Scale amount", value: $animationAmount.animation(
//                .easeInOut(duration: 1)
//                .repeatCount(3, autoreverses: true)
//            ), in: 1...10)
//            Spacer()
//
//            Button("Tap ME") {
//                animationAmount += 1
//            }
//            .padding(40)
//            .background(.red)
//            .foregroundStyle(.white)
//            .clipShape(.circle)
//            .scaleEffect(animationAmount)
//        }
//        .padding()

        // MARK: настройка анимации SwiftUI

//        VStack {
//            Button("Tap Me") {
        ////                animationAmount += 1
//            }
//            .padding(50)
//            .background(.red)
//            .foregroundStyle(.white)
//            .clipShape(.circle)
        ////            .scaleEffect(animationAmount)
        ////            .blur(radius: (animationAmount - 1) * 3)
        ////            .animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
        ////            .animation(.easeInOut(duration: 2)
        ////                .delay(1),
        ////                value: animationAmount)
//            .overlay(
//                Circle()
//                    .stroke(.red)
//                    .scaleEffect(animationAmount)
//                    .opacity(2 - animationAmount)
//                    .animation(.easeInOut(duration: 1)
//                        .repeatForever(autoreverses: false),
//                        value: animationAmount)
//            )
//            .onAppear{
//                animationAmount = 2
//            }
//        }
//        .padding()
    }
}

#Preview {
    ContentView()
}
