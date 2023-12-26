//
//  AFDefaultButton.swift
//  Project4-AppleFrameworkApp
//
//  Created by Mahesh Kulkarni on 27/12/23.
//

import SwiftUI

struct AFDefaultButton: View {
    var title: String
    var body: some View {
        Button(action: {
            print("buuton clicked")
        }, label: {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 280, height: 50)
                .background(.pink)
                .foregroundColor(.white)
                .clipShape(.rect(cornerRadius: 15))
        })
    }
}

#Preview {
    AFDefaultButton(title: "Learn More")
}
