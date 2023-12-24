//
//  DataModel.swift
//  Project3-WeatherApp
//
//  Created by Mahesh Kulkarni on 24/12/23.
//

import Foundation

struct WeekDayDetails: Identifiable {
    var id = UUID()
    var day: String
    var imageName: String
    var temperature: Int
}

