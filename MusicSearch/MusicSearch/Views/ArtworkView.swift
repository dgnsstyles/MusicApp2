//
//  ArtworkView.swift
//  MusicSearch
//
//  Created by David Goren on 30-08-21.
//

import SwiftUI

struct ArtworkView: View {
    let image: Image?
    
    var body: some View {
        ZStack {
            if image != nil {
                image
            } else {
                Color(.systemIndigo)
                Image(systemName: "music.note")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
        }
        .frame(width: 50, height: 50)
        .shadow(radius: 5)
        padding(.trailing, 5)
    }
}

