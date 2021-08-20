//
//  Settings.swift
//  Electry
//
//  Created by Kaloyan  Doychinov  on 20.08.21.
//

import SwiftUI

struct Settings: View {
    var body: some View {
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
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
