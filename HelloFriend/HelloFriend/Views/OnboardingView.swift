import SwiftUI

struct OnboardingView: View {
    // "onboarding" is the name of the property on AppStorage
    // while "isOnboardingViewActive" is the local variable name
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    @State private var isTextVisible = false

    let lightPurple = Color("LightPurple")
    let darkPurple = Color("DarkPurple")
    
    var body: some View {
        ZStack {
            Color.accentColor.ignoresSafeArea()
            VStack {
                Spacer()
                
                // MARK: Header
                Text("Hello, friend!")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                    .foregroundColor(.white)
                Text("Wish you a happy coding")
                    .font(.title3)
                    .foregroundColor(.white)
                
                Spacer()
                setButton()
                Spacer()
            }
        }
    }
    
    private func setButton() -> some View {
        Button {
            print("Btn clicked")
        } label: {
            Text(">> TIME TO LAUNCH")
                .font(.callout)
                .fontWeight(.heavy)
                .animation(
                    Animation
                        .easeOut(duration: 0.8)
                        .repeatForever()
                    , value: isTextVisible
                )
                .foregroundColor(
                    isTextVisible ? .white : lightPurple
                )
        }
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.capsule)
        .controlSize(.large)
        .tint(lightPurple)
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                isTextVisible = true
            })
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
