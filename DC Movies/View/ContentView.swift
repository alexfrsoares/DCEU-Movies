//
//  ContentView.swift
//  DC Movies
//
//  Created by Alex Freitas on 25/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Now Playing")
                    .font(.headline)
                HorizontalList()
                Text("Popular Movies")
                    .font(.headline)
                VerticalList()
            }
            .navigationBarTitle(Text("DCEU Movies"), displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
