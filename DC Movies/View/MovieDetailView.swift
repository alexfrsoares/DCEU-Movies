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
            VStack(alignment: .leading, spacing: 12) {
                HStack(alignment: .bottom) {
                    movie.image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 180)
                        .cornerRadius(10)
                    VStack(alignment: .leading, spacing: 6) {
                        Text(movie.title)
                            .font(.title3)
                            .bold()
                        Text("Info")
                            .font(.body)
                            .foregroundColor(Color.gray)
                        
                        Text("☆ \(movie.userScore)")
                            .font(.caption)
                            .foregroundColor(Color.gray)
                            .padding(.bottom, 12)
                    }
                    .padding(.horizontal, 6)
                }
                Text("Overview")
                    .font(.headline)
                    .fontWeight(.bold)
                Text(movie.description)
                    .foregroundColor(Color.gray)
                    .padding(0)
                Spacer()
            }
            .padding()
            .navigationBarTitle(Text("Movie Details"), displayMode: .inline)
            .navigationBarBackButtonHidden(false)
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: movies[10])
    }
}
