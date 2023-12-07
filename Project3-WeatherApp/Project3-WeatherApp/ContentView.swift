//
//  ContentView.swift
//  Project3-WeatherApp
//
//  Created by Mahesh Kulkarni on 07/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            BackGroundView(topColor: .blue, 
                           bottomColor: Color("LightBlue"))
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                VStack(spacing: 10) {
                    MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 76)
                }
                
                HStack(spacing:10) {
                    
                    WeatherDayView(dayOfWeek: "MON", imageName: "cloud.sun.fill", temperature: 72)
                    
                    WeatherDayView(dayOfWeek: "TUE", imageName: "sun.max.fill", temperature: 70)
                    
                    WeatherDayView(dayOfWeek: "WED", imageName: "wind.snow", temperature: 71)
                    
                    WeatherDayView(dayOfWeek: "THUR", imageName: "snow", temperature: 72)
                    
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.fill", temperature: 78)
                    
                    WeatherDayView(dayOfWeek: "SAT", imageName: "sunset.fill", temperature: 76)
                    
                }
                .padding()
                
                Spacer()
                Button(action: {
                    print("Tapped")
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
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient:Gradient(colors: [topColor, bottomColor]),
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
