//
//  ContentView.swift
//  Animations
//
//  Created by Ваня Науменко on 19.02.24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        //MARK: Создание явной анимации
        Button("Tap ME") {
            
        }
        .padding(50)
        .background(.yellow)
        .foregroundStyle(.white)
        .clipShape(.circle)
        
        //MARK: Aнимация привязок
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
        
        //MARK: настройка анимации SwiftUI
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
