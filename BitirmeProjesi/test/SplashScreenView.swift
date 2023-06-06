//
//  SplashScreenView.swift
//  test
//
//  Created by Yusuf Can Sağlam on 1.04.2023.
//


import SwiftUI

struct SplashScreenView: View {

    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        if isActive {
            ContentView ()
        } else {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all) // Sadece SplashScreenView'in arka planını siyah yapar
                
                VStack {
                    Image("pasha")
                        .font(.system(size: 1))
                        .scaleEffect(size)
                        .opacity(opacity)
                        .onAppear {
                            withAnimation(.easeIn(duration: 0.8)) {
                                self.size = 0.9
                                self.opacity = 1
                            }
                        }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        
                        
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
