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
            LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)


            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()

                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 180, height: 180)
                        .aspectRatio(contentMode: .fit)

                    Text("76°")
                        .font(.system(size: 70, weight: .medium))

                }
                HStack(spacing: 18){
                    
                    VStack(spacing: 12){
                        Text("TUE")
                            .font(.system(size: 30, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 40, height: 40 )
                            .aspectRatio(contentMode: .fit)
                        Text("74°")
                            .font(.system(size: 30, weight: .medium, design: .default))
                            .foregroundColor(.white)
                    }
                    VStack(spacing: 12){
                        Text("WED")
                            .font(.system(size: 30, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        
                        Image(systemName: "sun.max.fill")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 40, height: 40 )
                            .aspectRatio(contentMode: .fit)
                        Text("70°")
                            .font(.system(size: 30, weight: .medium, design: .default))
                            .foregroundColor(.white)
                    }
                    VStack(spacing: 12){
                        Text("THU")
                            .font(.system(size: 30, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        
                        Image(systemName: "wind")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 40, height: 40 )
                            .aspectRatio(contentMode: .fit)
                        Text("66°")
                            .font(.system(size: 30, weight: .medium, design: .default))
                            .foregroundColor(.white)
                    }
                    VStack(spacing: 12){
                        Text("FRI")
                            .font(.system(size: 30, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        
                        Image(systemName: "sunrise.fill")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 40, height: 40 )
                            .aspectRatio(contentMode: .fit)
                        Text("60°")
                            .font(.system(size: 30, weight: .medium, design: .default))
                            .foregroundColor(.white)
                    }
                    VStack(spacing: 12){
                        Text("SAT")
                            .font(.system(size: 30, weight: .medium, design: .default))
                            .foregroundColor(.white)
                        
                        Image(systemName: "moon.stars.fill")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 40, height: 40 )
                            .aspectRatio(contentMode: .fit)
                        Text("55°")
                            .font(.system(size: 30, weight: .medium, design: .default))
                            .foregroundColor(.white)
                    }
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
