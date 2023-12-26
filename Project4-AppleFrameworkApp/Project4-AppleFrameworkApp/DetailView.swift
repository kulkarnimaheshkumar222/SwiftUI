//
//  DetailView.swift
//  Project4-AppleFrameworkApp
//
//  Created by Mahesh Kulkarni on 26/12/23.
//

import SwiftUI

struct DetailView: View {
    var framework: Framework
    var body: some View {
        FrameworkDetailView(framework: framework)
    }
}

struct FrameworkDetailView: View {
    var framework: Framework
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    print("Dissmiss")
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                })
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            AFDefaultButton(title: "Learn More")
        }
    }
}
#Preview {
    DetailView(framework: Framework(name:MockData.sampleFrameworks.name,
                  imageName:MockData.sampleFrameworks.imageName,
                  urlString: MockData.sampleFrameworks.urlString,
                  description:MockData.sampleFrameworks.description))
}
