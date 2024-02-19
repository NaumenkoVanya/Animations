//
//  ContentView.swift
//  Animations
//
//  Created by Ваня Науменко on 19.02.24.
//

import SwiftUI

struct ContentView: View {
    let letters = Array("Hello SwiftUI")
    @State private var animationAmount = 0.0
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero

    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count, id: \.self) { num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .offset(dragAmount)
                    .animation(.linear.delay(Double(num) / 20), value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged{ dragAmount = $0.translation }
                .onEnded { _ in
                    dragAmount = .zero
                    enabled.toggle()
                }
        )
//        LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomLeading)
//            .frame(width: 300, height: 200)
//            .clipShape(.rect(cornerRadius: 10))
//            .offset(dragAmount)
//            .gesture(
//                DragGesture()
//                    .onChanged { dragAmount = $0.translation }
//                    .onEnded{ _ in
//                        withAnimation(.bouncy) {
//                            dragAmount = .zero
//                        }
//                    }
//            )
            //.animation(.bouncy, value: dragAmount)
        // MARK: Создание явной анимации

//        Button("Tap Me More") {
//            enabled.toggle()
//        }
//        .frame(width: 200, height: 200)
//        .background(enabled ? .blue : .red)
//        .animation(nil, value: enabled)
//        .foregroundStyle(.white)
//        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
//        .animation(.spring(duration: 1, bounce: 0.6), value: enabled)
//
//        Button("Tap ME") {
////            withAnimation {
////                animationAmount += 360
////            }
//            withAnimation(.spring(duration: 1, bounce: 0.5)) {
//                animationAmount += 360
//            }
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundStyle(.white)
//        .clipShape(.circle)
//        .rotation3DEffect(
//            .degrees(animationAmount),
//            axis: (x: 0, y: 1, z: 0)
//        )
//        .shadow(color: .green, radius: 10)

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
