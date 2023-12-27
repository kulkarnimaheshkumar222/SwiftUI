//
//  FrameworkGridView.swift
//  Project4-AppleFrameworkApp
//
//  Created by Mahesh Kulkarni on 25/12/23.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Framework")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFrameworks, isShowingDetailView: $viewModel.isShowingDetailView)
            }
            
        }
        
    }
}

struct FrameworkTitleView: View {
    let framework: Framework
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}


#Preview {
    FrameworkGridView()
}
