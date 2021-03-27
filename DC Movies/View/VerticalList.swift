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
            NavigationLink(destination: MovieDetailView(movie: movie)) {
                VStackMovieInfo(movie: movie)
            }
        }
        .listStyle(PlainListStyle())
        .padding(.all, 0)
        .onAppear(perform: {
            UITableView.appearance().separatorStyle = .none
        })
    }
}

struct VerticalList_Previews: PreviewProvider {
    static var previews: some View {
        VerticalList()
    }
}
