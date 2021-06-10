//
//  ContentView.swift
//  Memo
//
//  Created by Marina Beatriz Santana de Aguiar on 10.06.21.
//

import SwiftUI

struct ContentView: View {
    @State var downloaded = true
    
    var body: some View {
        VStack {
            HStack {
                Text("Liked Songs")
                    .padding(.leading, 135)
                Spacer()
                Image(systemName: "ellipsis")
                    .font(.title)
                    .padding(.trailing, 5)
                    
            }
            .foregroundColor(Color(.label))
            .padding(.vertical, 20)
            .padding(.horizontal)
            Spacer()
            HStack {
                Toggle("Download", isOn: $downloaded)
                    .font(.headline)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("mainSongSubInfo")/*@END_MENU_TOKEN@*/)

            }
            .padding(.horizontal, 25)
            .padding(.vertical, 20)
            Spacer()

            ForEach(songs, id: \.id) { song in
                    song
                        .onTapGesture {
                            song.tappedOnSong = true
                            print("huhu")
                        }
            }
            Spacer()
            
        }
        .background(Color("mainBackground"))
        
    
    }
    
    
    
    var songs = [SongView(title: "Fever", album: "Adam Freeland", artist: "Sarah Vaughan"),
                 SongView(title: "Lost in Amsterdam", album: "Shine", artist: "Parow Stelar"),
                 SongView(title: "Vanished World", album: "Memory Drop", artist: "Oi Va Voi"),
                 SongView(title: "Aegis - Original Mix", album: "Be A Man You Ant", artist: "André Bratten"),
                 SongView(title: "Murder to the Mind", album: "Slow Slate", artist: "Tash Sultana"),
                 SongView(title: "See Me", album: "Xinobi", artist: "On The Quiet"),
                 SongView(title: "Arayan Bulur", album: "Buyuk Ev Ablukada", artist: "Firtnayt")]
    
}



struct SongView: View {
    let id = UUID()
    let title: String
    let album: String
    let artist: String
    @State var tappedOnSong = false
    
    var body: some View {
        HStack {
            if tappedOnSong {
                Image(systemName: "speaker.wave.3")
                    .font(.title3)
                Spacer()
            }
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(tappedOnSong ? .headline : .title3)
                    .foregroundColor(Color(.label))

                Text("\(album) - \(artist)")
            }
            
            
            Spacer()
            Image(systemName: "ellipsis")
                .font(.title3)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color("mainSongSubInfo")/*@END_MENU_TOKEN@*/)
        }
        .foregroundColor(tappedOnSong ? Color("mainSongHovered") : /*@START_MENU_TOKEN@*/Color("mainSongSubInfo")/*@END_MENU_TOKEN@*/)
        .background(tappedOnSong ? Color("mainSongBackgroundHovered") : Color("mainBackground"))
        .font(.subheadline)
        .padding(.horizontal, 25)
        .padding(.vertical, 15)

    }
}

































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

