//
//  OnboardingScreen.swift
//  Onboarding
//
//  Created by sardar saqib on 09/04/2025.
//

import SwiftUI

struct OnboardingScreen: View {
    var data: OnboardingModel
    @State private var isAnimating: Bool = false
    @Binding var currentPage: Int
    
    var body: some View {
        VStack {
            Image(systemName: data.imageName)
                .resizable()
                .scaledToFit()
                .padding(.bottom, 50)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimating ? 1.0 : 0.5)
                
            
            Text(data.title)
                .padding(.bottom, 20)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                .offset(x: isAnimating ? 0 : data.id < currentPage ?  -UIScreen.main.bounds.width : UIScreen.main.bounds.width)
                .scaleEffect(isAnimating ? 1: 0)
               
            
            Text(data.description)
                .font(.system(size: 17, design: .rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .opacity(isAnimating ? 1 : 0.1)
                .animation(
                    .easeOut(duration: 1.0).delay(0.5),
                    value: isAnimating
                )
        }
        .padding()
        .foregroundColor(Color.white)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
              isAnimating = true
            }
          }
        .onDisappear {
            withAnimation(.easeOut(duration: 0.0)) {
              isAnimating = false
            }
        }
        
    }
}

