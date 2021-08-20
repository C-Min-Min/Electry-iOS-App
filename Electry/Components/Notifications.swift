//
//  Notifications.swift
//  Electry
//
//  Created by Kaloyan  Doychinov  on 20.08.21.
//

import SwiftUI

struct Notifications: View {
    var body: some View {
        NavigationView{
            Text("")
                .navigationBarTitle("Notifications")
        }
            .font(.system(size: 30, weight: .bold, design: .rounded))
            .tabItem{
                Image(systemName: "bell.fill")
                Text("Notifications")
            }
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}
