//
//  VerticalList.swift
//  DC Movies
//
//  Created by Alex Freitas on 25/03/21.
//

import SwiftUI

struct VerticalList: View {
    var body: some View {
        List(movies) { movie in
            VStackMovieInfo(movie: movie)
        }
    }
}

struct VerticalList_Previews: PreviewProvider {
    static var previews: some View {
        VerticalList()
    }
}
