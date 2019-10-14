//
//  ActorRow.swift
//  0065701_HW2
//
//  Created by Shaun Ku on 2019/10/6.
//  Copyright © 2019 Shaun Ku. All rights reserved.
//

import SwiftUI

struct ActorRow: View
{
    var actor: Actor
    var body: some View
    {
        HStack
        {
            Image(actor.pic_to_show[0])
            .resizable()
            .scaledToFill()
            .frame(width: 80, height: 80)
            .clipShape(Circle())
            VStack(alignment: .leading)
            {
                Text(actor.name).font(Font.custom("Snell Roundhand", size: 20))
                //Text(actor.gender)
                Text(actor.masterpiece).lineLimit(1).font(Font.custom("Snell Roundhand", size: 20))
                //Text(actor.intro)
            }
            Spacer()
        }
    }
}

struct ActorRow_Previews: PreviewProvider
{
    static var previews: some View
    {
        ActorRow(actor: Actor(name:"TomCruise", pic_to_show:["TomCruise0", "TomCruise1"], gender:"male", masterpiece:"Mission Impossible", intro:"123")).previewLayout(.fixed(width: 300, height: 70))
    }
}
