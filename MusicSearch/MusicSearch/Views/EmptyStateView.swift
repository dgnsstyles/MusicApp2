//
//  SwiftUIView.swift
//  MusicSearch
//
//  Created by David Goren on 30-08-21.
//

import SwiftUI

struct EmptyStateView: View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "music.note")
                .font(.system(size: 85))
                .padding(.bottom)
            Text("Empieza a buscar Musica")
                .font(.title)
            Spacer()
        }
        .padding()
        .foregroundColor(Color(.systemIndigo))
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyStateView()
    }
}
