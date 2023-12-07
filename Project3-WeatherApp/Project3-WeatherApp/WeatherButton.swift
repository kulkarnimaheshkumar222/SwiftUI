//
//  WeatherButton.swift
//  Project3-WeatherApp
//
//  Created by Mahesh Kulkarni on 07/12/23.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .clipShape(.buttonBorder)
    }
}
