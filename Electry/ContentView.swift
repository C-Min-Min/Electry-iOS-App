//
//  ContentView.swift
//  Electry
//
//  Created by Kaloyan  Doychinov  on 30.07.21.
//

import SwiftUI

typealias Devices = [String:Any]

var devices = [
    [
        "dev_id": "1",
        "dev_name": "Bedroom Lights",
        "description": "Kaloyan's Bedroom Lights (2)",
        "image_link": "lightbulb.fill",
    ],
    [
        "dev_id": "2",
        "dev_name": "Livingroom Lights",
        "description": "LivingroomLights (4)",
        "image_link": "lightbulb.fill",
    ],
    [
        "dev_id": "3",
        "dev_name": "Bedroom Lights",
        "description": "Kaloyan's Bedroom Lights (2)",
        "image_link": "lightbulb.fill",
    ],
    [
        "dev_id": "4",
        "dev_name": "Livingroom Lights",
        "description": "LivingroomLights (4)",
        "image_link": "lightbulb.fill",
    ],
    [
        "dev_id": "5",
        "dev_name": "Bedroom Lights",
        "description": "Kaloyan's Bedroom Lights (2)",
        "image_link": "lightbulb.fill",
    ],
    [
        "dev_id": "6",
        "dev_name": "Livingroom Lights",
        "description": "LivingroomLights (4)",
        "image_link": "lightbulb.fill",
    ],
    [
        "dev_id": "7",
        "dev_name": "Bedroom Lights",
        "description": "Kaloyan's Bedroom Lights (2)",
        "image_link": "lightbulb.fill",
    ],
    [
        "dev_id": "8",
        "dev_name": "Livingroom Lights OOOO Nice",
        "description": "LivingroomLights (4)",
        "image_link": "lightbulb.fill",
    ],
]


struct ContentView: View {
    private var glayout = [
        GridItem(.flexible(), spacing: 15),
        GridItem(.flexible())
    ]
    
    var body: some View {
        TabView{
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
                            .background(Color.accentColor)
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
            
            NavigationView{
                ScrollView{
                    LazyVGrid(columns: glayout, spacing: 100, content: {
                        Text("Test")
                        Text("Test")
                        Text("Test")
                        Text("Test")
                        Text("Test")
                        Text("Test")
                        Text("Test")
                        Text("Test")
                        Text("Test")
                        Text("Test")
                    })
                }
                .navigationBarTitle("Devices")
            }
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem{
                    Image(systemName: "power")
                    Text("Devices")
                }
            
            NavigationView{
                Text("")
                    .navigationBarTitle("Stats")
            }
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem{
                    Image(systemName: "list.dash")
                        .rotationEffect(Angle(degrees: 180))
                    Text("Stats")
                }
            
            NavigationView{
                Text("")
                    .navigationBarTitle("Notifications")
            }
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem{
                    Image(systemName: "bell.fill")
                    Text("Notifications")
                }
            
            NavigationView{
                List {
                    Text("Setting1")
                    Text("Setting2")
                    Text("Setting3")
                    Text("Setting4")
                }
                    .navigationBarTitle("Settings")
            }
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem{
                    Image(systemName: "gear")
                    Text("Settings")
                }
                
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
