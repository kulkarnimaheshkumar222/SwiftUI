//
//  DetailView.swift
//  Project4-AppleFrameworkApp
//
//  Created by Mahesh Kulkarni on 26/12/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    isShowingDetailView = false
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
    FrameworkDetailView(framework: Framework(name:MockData.sampleFrameworks.name,
                  imageName:MockData.sampleFrameworks.imageName,
                  urlString: MockData.sampleFrameworks.urlString,
                                    description:MockData.sampleFrameworks.description), isShowingDetailView: .constant(false))
}
