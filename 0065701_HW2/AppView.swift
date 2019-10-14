//
//  AppView.swift
//  0065701_HW2
//
//  Created by Shaun Ku on 2019/10/6.
//  Copyright © 2019 Shaun Ku. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
                MovieView().tabItem{
                    Image(systemName: "video.circle")
                    Text("Movie")
                }
            
            
            ActorView().tabItem{
                Image(systemName: "person.icloud.fill")
                Text("Actor")
            }
        }.accentColor(.purple)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
