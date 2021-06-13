//
//  MusicPlayerViewModel.swift
//  MusicPlayer
//
//  Created by Marina Beatriz Santana de Aguiar on 13.06.21.
//

import SwiftUI

class MusicPlayerViewModel: ObservableObject {
    typealias Song = MusicPlayerModel.Song
    
    @Published private(set) var model = MusicPlayerModel()
    
    func playSong(_ song: Song) {
        // TODO: Fix Song that is already playing and turn it off
        let songIndex = findSongIndex(song.id)
        model.songs[songIndex].isPlaying.toggle()
    }
    
    func findSongIndex(_ id: String) -> Int {
        return model.songs.firstIndex(where: { song in
            song.id == id
        })!
    }
}
