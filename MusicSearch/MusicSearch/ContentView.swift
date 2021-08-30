//
//  ContentView.swift
//  MusicSearch
//
//  Created by David Goren on 30-08-21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: SongListViewModel
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(searchTerm: $viewModel.searchTerm)
                if viewModel.songs.isEmpty {
                    EmptyStateView()
                } else {
                    List(viewModel.songs) { song in
                        SongView(song: song)
                        
                    }
                    .listStyle(PlainListStyle())
                }
            }
            .navigationTitle("Music Search")
        }        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: SongListViewModel())
    }
}
