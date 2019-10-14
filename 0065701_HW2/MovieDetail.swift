//
//  MovieDetail.swift
//  0065701_HW2
//
//  Created by Shaun Ku on 2019/10/6.
//  Copyright © 2019 Shaun Ku. All rights reserved.
//

import SwiftUI

struct MovieDetail: View
{
    var movie: Movie
    var body: some View
    {
        ScrollView(.vertical)
        {
            VStack
            {
                Spacer()
                Text(movie.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                Image(movie.pic_to_show)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 500)
                .clipped()
                .padding(EdgeInsets(top: -10, leading: 10, bottom: 10, trailing: 10))
                Text("Satrring: ").foregroundColor(.purple).bold()
                Text(movie.mainactor).foregroundColor(.purple).bold()
                Text(movie.detail).lineLimit(Int.max).font(Font.custom("Snell Roundhand", size: 20))
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 30, trailing: 10))
                
                Text("Scene Picture:")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
                ScrollView(.horizontal)
                {
                    ScenePic(movie: movie)
                }
            }.background(Image("theaterBackground")
            .resizable()
            .scaledToFill().opacity(0.5))
            .clipped()
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: movies[0])
    }
}

struct ScenePic: View
{
    var movie: Movie
    let maxWidth = (UIScreen.main.bounds.size.width - 20)
    var body: some View
    {
        HStack(spacing: 20)
        {
            ForEach(0..<self.movie.scenepicture.count)
            {
                (index) in
                Image(self.movie.scenepicture[index])
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: self.maxWidth, maxHeight: 500)
                    .clipped()
                    .padding(EdgeInsets(top: -10, leading: 10, bottom: 10, trailing: 10))
            }
        }
    }
}
