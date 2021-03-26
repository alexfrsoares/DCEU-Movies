//
//  MovieImage.swift
//  DC Movies
//
//  Created by Alex Freitas on 25/03/21.
//

import SwiftUI

struct HStackMovieInfo: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("2019 Joker")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 260)
                .cornerRadius(10)
            Text("Joker")
                .font(.headline)
            Text("☆ 7.8")
                .font(.subheadline)
        }
        .padding()
    }
}

struct HStackMovieImage_Previews: PreviewProvider {
    static var previews: some View {
        HStackMovieInfo()
    }
}
