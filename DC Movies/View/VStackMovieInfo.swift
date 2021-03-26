//
//  VStackMovieInfo.swift
//  DC Movies
//
//  Created by Alex Freitas on 25/03/21.
//

import SwiftUI

struct VStackMovieInfo: View {
    var movie: DCEU_Movie
    
    var body: some View {
        HStack {
            movie.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 120)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Text(movie.title)
                    .font(.headline)
                Text(movie.description)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                    .lineLimit(3)
                    .padding(.vertical, 1)
                Text("☆ \(movie.userScore)")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
        }
        .padding()
    }
}

struct VStackMovieInfo_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStackMovieInfo(movie: movies[0])
            VStackMovieInfo(movie: movies[10])
            VStackMovieInfo(movie: movies[19])
        }
            .previewLayout(.fixed(width: 400, height: 140))
    }
}
