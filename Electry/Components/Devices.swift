//
//  Devices.swift
//  Electry
//
//  Created by Kaloyan  Doychinov  on 20.08.21.
//

import SwiftUI

struct Devices: View {
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: glayout, spacing: 15){
                    ForEach(devices, id: \.self){ device in
                        VStack(alignment: .leading, spacing: 2.5){
                            Image(systemName: device["image_link"]!)
                            Spacer()
                            Text(device["dev_name"]!)
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                            Spacer()
                            Text(device["status"] ?? "Unknown")
                                .font(.body)
                                .bold()
                                
                        }
                        .frame(maxWidth: .infinity)
                        .padding(EdgeInsets(top: 15, leading: 0, bottom: 15, trailing: 0))
                        .background(
                            Rectangle().fill(((Color.secondary).opacity(0.2)))
                        )
                        .cornerRadius(15)

                    }
                }
                .padding(15)
            }
            .navigationBarTitle("Devices")
        }
            .font(.system(size: 30, weight: .bold, design: .rounded))
            .tabItem{
                Image(systemName: "power")
                Text("Devices")
            }
    }
}

struct Devices_Previews: PreviewProvider {
    static var previews: some View {
        Devices()
    }
}
