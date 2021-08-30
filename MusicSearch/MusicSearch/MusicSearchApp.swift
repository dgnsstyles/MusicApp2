//
//  MusicSearchApp.swift
//  MusicSearch
//
//  Created by David Goren on 30-08-21.
//

import SwiftUI

@main
struct MusicSearchApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: SongListViewModel())
        }
    }
}
