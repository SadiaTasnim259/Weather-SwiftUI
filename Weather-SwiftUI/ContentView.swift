//
//  ContentView.swift
//  Weather-SwiftUI
//
//  Created by Sadia on 14/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, Color("lightBlue")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)


            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()

                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                        

                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)
                HStack(spacing: 25){
                    
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 70)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind", temperature: 66)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunrise.fill", temperature: 60)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "moon.stars.fill", temperature: 55)
                    
//                    VStack(spacing: 12){
//                        Text("WED")
//                            .font(.system(size: 30, weight: .medium, design: .default))
//                            .foregroundColor(.white)
//
//                        Image(systemName: "sun.max.fill")
//                            .renderingMode(.original)
//                            .resizable()
//                            .frame(width: 40, height: 40 )
//                            .aspectRatio(contentMode: .fit)
//                        Text("70°")
//                            .font(.system(size: 30, weight: .medium, design: .default))
//                            .foregroundColor(.white)
//                    }
//                    VStack(spacing: 12){
//                        Text("THU")
//                            .font(.system(size: 30, weight: .medium, design: .default))
//                            .foregroundColor(.white)
//
//                        Image(systemName: "wind")
//                            .renderingMode(.original)
//                            .resizable()
//                            .frame(width: 40, height: 40 )
//                            .aspectRatio(contentMode: .fit)
//                        Text("66°")
//                            .font(.system(size: 30, weight: .medium, design: .default))
//                            .foregroundColor(.white)
//                    }
//                    VStack(spacing: 12){
//                        Text("FRI")
//                            .font(.system(size: 30, weight: .medium, design: .default))
//                            .foregroundColor(.white)
//
//                        Image(systemName: "sunrise.fill")
//                            .renderingMode(.original)
//                            .resizable()
//                            .frame(width: 40, height: 40 )
//                            .aspectRatio(contentMode: .fit)
//                        Text("60°")
//                            .font(.system(size: 30, weight: .medium, design: .default))
//                            .foregroundColor(.white)
//                    }
//                    VStack(spacing: 12){
//                        Text("SAT")
//                            .font(.system(size: 30, weight: .medium, design: .default))
//                            .foregroundColor(.white)
//
//                        Image(systemName: "moon.stars.fill")
//                            .renderingMode(.original)
//                            .resizable()
//                            .frame(width: 40, height: 40 )
//                            .aspectRatio(contentMode: .fit)
//                        Text("55°")
//                            .font(.system(size: 30, weight: .medium, design: .default))
//                            .foregroundColor(.white)
//                    }
                }
                Spacer()
                
                Button {
                    //""
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }

                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 12){
            Text(dayOfWeek)
                .font(.system(size: 25, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 40, height: 40 )
                .aspectRatio(contentMode: .fit)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}
