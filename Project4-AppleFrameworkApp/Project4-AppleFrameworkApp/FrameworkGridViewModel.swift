//
//  FrameworkGridViewModel.swift
//  Project4-AppleFrameworkApp
//
//  Created by Mahesh Kulkarni on 27/12/23.
//


import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
