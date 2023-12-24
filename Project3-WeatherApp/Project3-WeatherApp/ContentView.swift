//
//  ContentView.swift
//  Project3-WeatherApp
//
//  Created by Mahesh Kulkarni on 07/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var weekDayDetails: [WeekDayDetails] = [
        .init(day: "MON", imageName: "cloud.sun.fill", temperature: 72),
        .init(day: "TUE", imageName: "sun.max.fill", temperature: 70),
        .init(day: "WED", imageName: "wind.snow", temperature: 71),
        .init(day: "THUR", imageName: "snow", temperature: 76),
        .init(day: "FRI", imageName: "cloud.sun.fill", temperature: 78),
        .init(day: "SAT", imageName: "sunset.fill", temperature: 75)
    ]

    var body: some View {
        ZStack {
            BackGroundView(isNight: isNight)
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                VStack(spacing: 10) {
                    MainWeatherStatusView(imageName:  isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)
                }
                HStack(spacing:10) {
                    ForEach(weekDayDetails) { weekDayDetail in
                        WeatherDayView(dayOfWeek: weekDayDetail.day, imageName: weekDayDetail.imageName, temperature: weekDayDetail.temperature)
                    }
                }
                .padding()
                Spacer()
                Button(action: {
                    print("Tapped")
                    isNight.toggle()
                }, label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
                })
                Spacer()
            }
        }
    }
}

struct BackGroundView: View {
    var isNight: Bool

    var body: some View {
        LinearGradient(gradient:Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("LightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
        
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        Image(systemName: imageName)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
        
        Text("\(temperature)°")
            .font(.system(size: 70, weight: .medium, design: .default))
            .foregroundStyle(.white)
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 50, height: 50)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
