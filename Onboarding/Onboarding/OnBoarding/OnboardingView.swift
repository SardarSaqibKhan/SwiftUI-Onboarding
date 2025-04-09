//
//  OnboardingView.swift
//  Onboarding
//
//  Created by sardar saqib on 09/04/2025.
//

import SwiftUI


struct OnboardingView: View {
    @State private var currentPage: Int = 1
    
    var totalPages: Int {
        OnboardingModel.dataSource.count
    }
    
    var onBoardingDatasource: [OnboardingModel] {
        OnboardingModel.dataSource
    }
    
    var onSkip: () -> Void
    
    var body: some View {
        ZStack {
            Image("backgroundImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
           
            VStack {
                skipButton
                
                onboardingTabView
                
                navigationButtons
            }
            .padding()
        }
        
    }
    
    // Skip Button
    private var skipButton: some View {
        HStack {
            Spacer()
            Button(action: onSkip) {
                HStack(spacing: 8) {
                    Text(currentPage == totalPages ? "Done" : "Skip")
                    Image(systemName: currentPage == totalPages ? "checkmark.circle.fill" : "xmark.circle.fill")
                        .imageScale(.large)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(
                    Capsule()
                        .strokeBorder(Color.blue, lineWidth: 1.25)
                )
            }
        }
        .padding(.horizontal)
    }
    
    // TabView for Onboarding Screens
    private var onboardingTabView: some View {
        TabView(selection: $currentPage) {
            ForEach(onBoardingDatasource, id: \.id) { onboardingData in
                OnboardingScreen(data: onboardingData, currentPage: $currentPage)
                    .tag(onboardingData.id)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
    
    // Navigation Buttons and Page Indicator
    private var navigationButtons: some View {
        HStack {
            previousButton
            
            Spacer()
            
            pageIndicator
            
            Spacer()
            
            nextButton
        }
        .padding(.horizontal)
    }
    
    // Previous Button
    private var previousButton: some View {
        Button(action: {
            if currentPage > 1 {
                withAnimation {
                    currentPage -= 1
                }
            }
        }) {
            Image(systemName: "arrow.left.circle")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(currentPage == 1 ? Color.gray : Color.blue)
        }
        .disabled(currentPage == 1)
    }
    
    // Page Indicator
    private var pageIndicator: some View {
        HStack {
            ForEach(onBoardingDatasource, id: \.id) { boardingData in
                RoundedRectangle(cornerRadius: 2)
                    .fill(currentPage == boardingData.id ? Color.blue : Color.gray)
                    .frame(width: 20, height: 4)
                    .animation(.easeInOut(duration: 0.3), value: currentPage)
            }
        }
    }
    
    // Next Button
    private var nextButton: some View {
        Button(action: {
            if currentPage < totalPages {
                withAnimation {
                    currentPage += 1
                }
            }
        }) {
            Image(systemName: "arrow.right.circle")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(currentPage == totalPages ? Color.gray : Color.blue)
        }
        .disabled(currentPage == totalPages)
    }
}

#Preview {
    OnboardingView {
        // Action for skip button
    }
}

