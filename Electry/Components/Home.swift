//
//  Home.swift
//  Electry
//
//  Created by Kaloyan  Doychinov  on 20.08.21.
//

import SwiftUI

struct Home: View {
    private var glayout = [
        GridItem(.flexible(), spacing: 15),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: glayout, spacing: 15){
                    ForEach(devices, id: \.self){ device in
                        VStack(alignment: .leading, spacing: 2.5){
                            Image(systemName: device["image_link"]!)
                            Spacer()
                            VStack(alignment: .leading){
                                Text(device["dev_name"]!)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                Text(device["status"] ?? "Unknown")
                                    .font(.subheadline)
                                    .bold()
                            }
                        }
                        .padding(15)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .aspectRatio(1, contentMode: .fill)
                        .background(
                            Rectangle().fill(((Color.secondary).opacity(0.2)))
                        )
                        .cornerRadius(15)
                        
                    }
                }
                .padding(15)
            }
            .navigationBarTitle("Home")
        }
        
        .font(.system(size: 30, weight: .bold, design: .rounded))
        .tabItem{
            Image(systemName: "house.fill")
            Text("Home")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
