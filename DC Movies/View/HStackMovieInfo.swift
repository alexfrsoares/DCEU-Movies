//
//  MovieImage.swift
//  DC Movies
//
//  Created by Alex Freitas on 25/03/21.
//

import SwiftUI

struct HStackMovieInfo: View {
    var movie: DCEU_Movie
    
    var body: some View {
        VStack(alignment: .leading) {
            movie.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
            Text(movie.title)
                .font(.headline)
                .lineLimit(1)
            Text("☆ \(movie.userScore)")
                .font(.subheadline)
                .foregroundColor(Color.gray)
        }
        .frame(width: 140)
        .padding(.all, 4)
    }
}

struct HStackMovieInfo_Previews: PreviewProvider {
    static var previews: some View {
        HStackMovieInfo(movie: movies[10])
    }
}
