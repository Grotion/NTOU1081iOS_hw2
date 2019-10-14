//
//  MovieView.swift
//  0065701_HW2
//
//  Created by Shaun Ku on 2019/10/6.
//  Copyright © 2019 Shaun Ku. All rights reserved.
//

import SwiftUI

struct MovieView: View
{
    
    var body: some View
    {
       NavigationView
       {
            List
            {
                ExtractedView()
            }.navigationBarTitle("Movies🎞")
                .onAppear{UITableView.appearance().separatorColor = .clear}
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}

struct ExtractedView: View
{
    let names = [["Starwars", "Joker"], ["Kingsman", "Avengers"], ["Spiderman", "Goldencompass"], ["Mazerunner", "Inception"], ["Blackpanther", "Missionimpossible"], ["Badgenius", "Ratatouille"]]
    var columnCount = 2
    let photoWidth = (UIScreen.main.bounds.size.width - 10) / 2
    let photoHeight = (UIScreen.main.bounds.size.width - 10) / 1.5
    var body: some View
    {
        ForEach(0..<self.names.count)
        {(row) in
            ScrollView
                {
                    HStack(spacing: 10)
                    {
                        ForEach(0..<self.names[row].count)
                        {(column) in
                            NavigationLink(destination: MovieDetail(movie: movies[(row*2)+column]))
                            {
                                Image(self.names[row][column])
                                    .renderingMode(.original)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: self.photoWidth, height: self.photoHeight)
                                    .clipped()
                            }
                        }
                    }
            }
        }.listRowInsets(EdgeInsets(top:0, leading:0, bottom:10, trailing: 0))
    }
}
