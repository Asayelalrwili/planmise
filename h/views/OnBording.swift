//
//  OnBoarding.swift
//  Ivy
//
//  Created by Alaa Alabdullah on 14/12/2022.
//

import SwiftUI

enum OnbordingType: CaseIterable {
    case scan
    case track
    case remind
    
    
    
    var image: String {
        switch self {
        case .scan:
            return "7"
        case .track:
            return "9"
        case .remind:
            return "10"
            
        }
    }
    
    
    var description: String {
        switch self {
        case .scan:
            return "Think deeply about your life, work, family!"
        case .track:
            return "Evalute your life balance "
        case .remind:
            return "Make promises to better life , to Balenced life "
            
            
        }
        
    }
}

struct OnbordingView: View {
    
    var selectedOnbordingType: OnbordingType = .scan
    
    let labels = [
        
        "thinking ",
        "evalueting",
        "planning"
        
    ]
    
    var body: some View {
        
        ZStack {
            
               
            
            
            
                TabView {
                    
                    ForEach(OnbordingType.allCases, id: \.description) { onbording in
                        SingleOnbording(onbordingType: onbording)
                    }
                    
                    
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
            
            
        }
        
        
    }
    
    
}

struct OnbordingView_Previews: PreviewProvider {
    static var previews: some View {
        OnbordingView()
    }
}

struct SingleOnbording: View {
    
    let onbordingType: OnbordingType
    
    @State private var showLogingPage = false
    @State private var showTabViewPage = false
    
    var body: some View {
        
        
            VStack {
                
                Button("skip"){
                    showTabViewPage.toggle()
                }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing ,30)
                    .foregroundColor(.secondary)
                    .fullScreenCover(isPresented: $showTabViewPage) {
                        ContentView()
                    }
                
                Spacer()
            
                Image(onbordingType.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                
                Text(onbordingType.description)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                
                if onbordingType == .remind {
                    
                       // SignFace()
                        //SignupID()
                        
                    
                }
               Spacer()
                
                
            }
            .padding(.horizontal,40)
            
        
        }
        

        
    }
