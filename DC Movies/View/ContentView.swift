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
                HStack(alignment: .firstTextBaseline) {
                    Text("Now Playing")
                        .font(.headline)
                        .padding(.horizontal, 14)
                    Spacer()
                    Button(action: {
                        print("Show de bola")
                    }, label: {
                        Text("See All")
                    })
                        .padding(.horizontal, 14)
                }
                    .padding(.top, 20)
                HorizontalList()
                Divider()
                Text("Popular Movies")
                    .font(.headline)
                    .padding(.horizontal, 14)
                    .padding(.top, 20)
                VerticalList()
            }
            .navigationBarTitle(Text("DCEU Movies"), displayMode: .automatic)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
