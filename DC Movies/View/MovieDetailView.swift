//
//  MovieDetailView.swift
//  DC Movies
//
//  Created by Alex Freitas on 27/03/21.
//

import SwiftUI

struct MovieDetailView: View {
    var movie: DCEU_Movie
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    movie.image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 180)
                        .cornerRadius(10)
                    VStack(alignment: .leading) {
                        Text(movie.title)
                        Text("Info")
                        Text(movie.userScore)
                    }
                }
                Text("Overview")
                Text(movie.description)
            }
            .navigationBarTitle(Text("Movie Details"), displayMode: .inline)
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: movies[10])
    }
}
