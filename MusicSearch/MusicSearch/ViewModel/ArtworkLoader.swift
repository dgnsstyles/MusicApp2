//
//  ArtworkLoader.swift
//  MusicSearch
//
//  Created by David Goren on 30-08-21.
//

import Foundation
import SwiftUI

class ArtworkLoader {
    private var dataTask: [URLSessionDataTask] = [ ]
    
    func loadArtWork(forSong song: Song, completion: @escaping((Image?) -> Void)) {
        guard let imageUrl = URL(string: song.artworkUrl) else  {
            completion(nil)
            return
        }
        let dataTask = URLSession.shared.dataTask(with: imageUrl) { data, _, _ in
            guard let data = data, let artwork = UIImage(data: data) else {
                completion(nil)
                return
            }
            
            let image = Image(uiImage: artwork)
            completion(image)
            
        }
        dataTask.append(dataTask)
        dataTask.resume()
    }
    func reset() {
        dataTask.forEach{ $0.cancel() } 
    }
}
