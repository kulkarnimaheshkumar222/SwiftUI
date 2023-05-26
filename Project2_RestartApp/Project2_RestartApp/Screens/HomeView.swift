//
//  HomeView.swift
//  Project2_RestartApp
//
//  Created by Mahesh Kulkarni on 22/05/23.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    var body: some View {
        
        VStack {
            // MARK:- HEADER
            ZStack {
                CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
            }
            // MARK:- CENTER
            
            Text("The time that leads to mastery dependent on intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            
            //MARK:- FOOTER
            Button {
                isOnboardingViewActive = true
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3,design: .rounded))
                    .fontWeight(.bold)
                    .controlSize(.large)
                    .padding(.horizontal)
                    
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .padding()

        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
