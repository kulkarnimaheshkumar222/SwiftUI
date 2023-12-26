//
//  Project4_AppleFrameworkAppApp.swift
//  Project4-AppleFrameworkApp
//
//  Created by Mahesh Kulkarni on 25/12/23.
//

import SwiftUI

@main
struct Project4_AppleFrameworkAppApp: App {
    var body: some Scene {
        WindowGroup {
            DetailView(framework: Framework(name:MockData.sampleFrameworks.name,
                                            imageName:MockData.sampleFrameworks.imageName,
                                            urlString: MockData.sampleFrameworks.urlString,
                                            description:MockData.sampleFrameworks.description))
        }
    }
}
