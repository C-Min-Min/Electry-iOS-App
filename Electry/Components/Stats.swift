//
//  Stats.swift
//  Electry
//
//  Created by Kaloyan  Doychinov  on 20.08.21.
//

import SwiftUI

struct Stats: View {
    var body: some View {
        NavigationView{
            Text("")
                .navigationBarTitle("Stats")
        }
            .font(.system(size: 30, weight: .bold, design: .rounded))
            .tabItem{
                Image(systemName: "list.dash")
                    .rotationEffect(Angle(degrees: 180))
                Text("Stats")
            }    }
}

struct Stats_Previews: PreviewProvider {
    static var previews: some View {
        Stats()
    }
}
