//
//  OnboardingView.swift
//  HelloFriend
//
//  Created by Maisa Milena on 15/09/22.
//

import SwiftUI

struct OnboardingView: View {
    // "onboarding" is the name of the property on AppStorage
    // while "isOnboardingViewActive" is the local variable name
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    let lightPurple = Color("LightPurple")
    let darkPurple = Color("DarkPurple")
    
    var body: some View {
        VStack {
            
            Spacer()
            
            // MARK: Header
            Text("Hello, friend!")
                .font(.largeTitle)
                .bold()
                .padding()
                .foregroundColor(darkPurple)
            Text("Wish you a happy codding")
                .font(.title3)
            
            Spacer()
            
            Button {
                print("Btn clicked")
            } label: {
                Text(">> TIME TO LAUNCH")
                    .bold()
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            .tint(lightPurple)

            Spacer()
            
        }
        
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
