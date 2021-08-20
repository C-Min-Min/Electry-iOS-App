//
//  ContentView.swift
//  Electry
//
//  Created by Kaloyan  Doychinov  on 30.07.21.
//

import SwiftUI

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

var glayout = [
    GridItem(.flexible(), spacing: 15),
    GridItem(.flexible())
]

struct ContentView: View {
    var body: some View {
        TabView{
            Home()
            Devices()
            Stats()
            Notifications()
            Settings()
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
