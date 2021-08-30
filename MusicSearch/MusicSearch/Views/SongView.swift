//
//  SongView.swift
//  MusicSearch
//
//  Created by David Goren on 30-08-21.
//

import SwiftUI

struct SongView: View {
    @ObservedObject var song: SongViewModel
    var body: some View {
        HStack {
            ArtworkView(image: song.artwork)
                .padding(.trailing)
            VStack(aligment: .leading){
                Text(song.trackName)
                Text(song.artistName)
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
        }
        .padding()
    }
}

struct SongView_Previews: PreviewProvider {
    static var previews: some View {
        SongView(song: SongViewModel())
    }
}
