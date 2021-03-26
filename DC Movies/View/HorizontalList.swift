//
//  HorizontalList.swift
//  DC Movies
//
//  Created by Alex Freitas on 25/03/21.
//

import SwiftUI

struct HorizontalList: View {
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
             HStack {
                 ForEach(movies) { movie in
                    HStackMovieInfo(movie: movie)
                 }
             }
        }
        .padding(.leading, 10)
    }
}

struct HorizontalList_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalList()
    }
}
