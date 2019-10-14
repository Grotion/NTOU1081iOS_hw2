//
//  ActorDetail.swift
//  0065701_HW2
//
//  Created by Shaun Ku on 2019/10/6.
//  Copyright © 2019 Shaun Ku. All rights reserved.
//

import SwiftUI

struct ActorDetail: View
{
    var actor: Actor
    var body: some View
    {
        ScrollView(.vertical)
        {
            ActorDetailSub(actor: actor)
        }
        
    }
}

struct ActorDetail_Previews: PreviewProvider
{
    static var previews: some View
    {
        ActorDetail(actor: actors[0])
    }
}

struct ActorDetailSub: View
{
    var actor: Actor
    let maxWidth = (UIScreen.main.bounds.size.width - 20)
    var body: some View
    {
        VStack
        {
            Spacer()
            Text(actor.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            ScrollView(.horizontal)
            {
                HStack(spacing: 20)
                {
                    ForEach(0..<actor.pic_to_show.count)
                    {
                        (index) in
                        Image(self.actor.pic_to_show[index])
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFill()
                            .frame(minWidth: 0, maxWidth: self.maxWidth, maxHeight: 500)
                            .clipped()
                    }
                }
            }.frame(minWidth: 0, maxWidth: .infinity, maxHeight: 500)
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            Text("Gender: " + actor.gender).font(Font.custom("Snell Roundhand", size: 20))
            Text("Masterpiece: " + actor.masterpiece).font(Font.custom("Snell Roundhand", size: 20))
            Text(actor.intro).lineLimit(nil).font(Font.custom("Snell Roundhand", size: 20))
            .padding(EdgeInsets(top: 20, leading: 10, bottom: 30, trailing: 10))
        }.navigationBarTitle("")
    }
}
