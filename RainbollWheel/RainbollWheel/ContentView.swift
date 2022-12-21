//
//  ContentView.swift
//  RainbollWheel
//
//  Created by kekeli on 19/12/2022.
//



import SwiftUI

struct ContentView: View {
    @State private var rotation: Double = 0

    var body: some View {
        Circle()
            .stroke(lineWidth: 17)
            .fill(
                AngularGradient(
                    gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple, .red]),
                    center: .center
                )
            )
            .frame(width: 200, height: 200)
            .rotationEffect(.degrees(rotation))
            .animation(.linear(duration: 5).speed(4).repeatForever(autoreverses: false),value: rotation)
            .onAppear {
               self.rotation = 360
            }
 
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
