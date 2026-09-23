//
//  ContentView.swift
//  Day01_ProfileCard
//
//  Created by Mahesh Kulkarni on 21/09/26.
//

import SwiftUI

struct ContentView: View {
    @State var shouldShowAlert: Bool = false
    var body: some View {
        VStack {
            Image("profile_Image")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipShape(.circle)
                .overlay {
                    Circle()
                        .stroke(.gray,lineWidth: 1)
                }
            Text("Mahesh Kulkarni")
                .font(.largeTitle)
                .foregroundStyle(.black)
                .bold()
            Text("iOS Developer")
                .font(.title)
                .foregroundStyle(.black)
            Button {
                shouldShowAlert = true
            } label: {
                Text("Follow")
                    .bold()
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
            }
            .padding(.horizontal, 30)
            .alert("Follow", isPresented: $shouldShowAlert) {
                Button("OK", role: .cancel){}
            } message: {
                Text("You are now following this person.")
            }
        }
    }
}

#Preview {
    ContentView()
}
