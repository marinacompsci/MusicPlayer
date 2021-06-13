//
//  MusicPlayerApp.swift
//  MusicPlayer
//
//  Created by Marina Beatriz Santana de Aguiar on 11.06.21.
//

import SwiftUI

@main
struct MusicPlayerApp: App {
    var musicPlayer = MusicPlayerViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(musicPlayer: musicPlayer)
        }
    }
}
