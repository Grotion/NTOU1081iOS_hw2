//
//  ActorView.swift
//  0065701_HW2
//
//  Created by Shaun Ku on 2019/10/6.
//  Copyright © 2019 Shaun Ku. All rights reserved.
//

import SwiftUI

struct ActorView: View
{
    var body: some View
    {
        NavigationView
        {
            List
            {
                Section(header: Text("Actor"))
                {
                    ForEach(0..<actors.count)
                    {
                        (index) in
                        NavigationLink(destination: ActorDetail(actor: actors[index]))
                        {
                            ActorRow(actor: actors[index])
                        }
                    }
                }
                Section(header: Text("Actress"))
                {
                    ForEach(0..<actresses.count)
                    {
                        (index) in
                        NavigationLink(destination: ActorDetail(actor: actresses[index]))
                        {
                            ActorRow(actor: actresses[index])
                        }
                    }
                }
            }.navigationBarTitle("Actor & Actress🎩")
        }
    }
}

struct ActorView_Previews: PreviewProvider {
    static var previews: some View {
        ActorView()
    }
}
