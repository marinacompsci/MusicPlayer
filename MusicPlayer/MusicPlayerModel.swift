//
//  MusicPlayerModel.swift
//  MusicPlayer
//
//  Created by Marina Beatriz Santana de Aguiar on 13.06.21.
//

import Foundation

struct MusicPlayerModel {
    
    var songs = [
        Song(title: "Fiddler's Farewell", album: "Feathers & Flesh", artist: "Avatar"),
        Song(title: "Vambora", album: "Maritmo", artist: "Adriana Calcanhotto"),
        Song(title: "Esa Mujer", album: "Salsa of the Caribbean", artist: "Puerto Rican Power"),
        Song(title: "Lost in Amsterdam", album: "Shine", artist: "Parow Stelar"),
        Song(title: "Cali Pachanguero", album: "Virtual Hits", artist: "Grupo Niche"),
        Song(title: "HP", album: "11:11", artist: "Maluma"),
        Song(title: "Ocean Drive(Extended Mix)", album: "", artist: "Duke Dumont"),
        Song(title: "Si Estuviésemos Juntos", album: "X 100PRE", artist: "Bad Bunny"),
        Song(title: "Nie oder jetzt", album: "Nie oder jetzt.", artist: "Doell")
    ]
    
    
    struct Song: Identifiable {
        let title: String
        let album: String
        let artist: String
        var isPlaying = false
        let id: String
        
        init(title: String, album: String, artist: String) {
            self.title = title
            self.album = album
            self.artist = artist
            id = title + album + artist
        }
    }
}


