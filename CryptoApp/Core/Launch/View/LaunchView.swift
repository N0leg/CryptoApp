//
//  LaunchView.swift
//  CryptoApp
//
//  Created by mk.pwnz on 05.09.2021.
//

import SwiftUI

struct LaunchView: View {
    @State private var loadingText = "Loading coins..."
    @State private var textOpacity = 1.0
    @Binding var showLaunchScreen: Bool
    
    var body: some View {
        ZStack {
            Color.launch.background
                .ignoresSafeArea()
            Image("logo-transparent")
                .resizable()
                .frame(width: 100, height: 100)
            
            ZStack {
                Text(loadingText)
                    .font(.headline)
                    .foregroundColor(.launch.accent)
                    .fontWeight(.heavy)
                    .offset(y: 70)
                    .opacity(textOpacity)
            }
            .onAppear {
                withAnimation(.linear(duration: 1.3).repeatForever(autoreverses: true)) {
                    textOpacity = 0.6
                }
            }
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView(showLaunchScreen: .constant(true))
    }
}