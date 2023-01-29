
import SwiftUI

var totalViews = 3

struct OnboardingView: View {
    @AppStorage("page") var page = 1
    
    var body: some View {
        
        if page == 1 {
            AppIntroductionSlide(
                title: "Connect with tourists",
                info: "Connect with people of faith locally & globally. Discover Chat & Engage",
                image: "onboarding-1"
            )
                .transition(.opacity)
        } else if page == 2 {
            AppIntroductionSlide(
                title: "Discover new things",
                info: "Explore new things through our app. DIscover initiary & other stuffs",
                image: "onboarding-2"
            )
        } else if page == 3 {
            AppIntroductionSlide(
                title: "Share your moments",
                info: "Share you trip initiary with others. Let’s make the travel fun & enoyable",
                image: "onboarding-3"
            )
        }
        
        if page == 4 {
            HomeView()
        }
        
    }
}

struct AppIntroductionSlide: View {
    
    @AppStorage("page") var page = 1
    
    var title: String
    var info: String
    var image: String
    
    
    var body: some View {
        ZStack{
            VStack {
                Spacer()
                
                // Onboarding Content
                VStack(alignment: .leading){
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Text(title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .font(.title)
                        .padding(.top)
                    Text(info)
                        .padding(.top, 5.0)
                        .foregroundColor(Color.white)
                    Spacer(minLength: 0)
                }
                .padding()
                .overlay(
                    HStack{
                        Spacer()
                        
                        Circle()
                            .foregroundColor(page == 1 ? .white : .white.opacity(0.5))
                            .frame(width: 5, height: 5)
                        Circle()
                            .foregroundColor(page == 2 ? .white : .white.opacity(0.5))
                            .frame(width: 5, height: 5)
                        Circle()
                            .foregroundColor(page == 3 ? .white : .white.opacity(0.5))
                            .frame(width: 5, height: 5)
                        
                        Spacer()
                    } //: HSTACK
                    .padding(), alignment: .bottomTrailing
                    
                ) //: OVERLAY
            } //: VSTACK
        } // ZSTACK
        .background(Color(.systemTeal).ignoresSafeArea())
        .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
            .onEnded({ value in
                // Swipe left action
                if value.translation.width < 0 {
                    withAnimation(.easeOut) {
                        if page <= totalViews || page == 2 {
                            page += 1
                        } else if page == 3 {
                            page = 1
                        }
                    }
                }
                // Swipe right action
                if value.translation.width > 0 {
                    withAnimation(.easeOut) {
                        if page > 1 {
                            page -= 1
                        }
                    }
                }
            })
        ) //: GESTURE
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

