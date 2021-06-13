//
//  ContentView.swift
//  Memo
//
//  Created by Marina Beatriz Santana de Aguiar on 10.06.21.
//

import SwiftUI

struct ContentView: View {
    @State var downloaded = true
    @ObservedObject var musicPlayer: MusicPlayerViewModel
    
    var body: some View {
        ScrollView {
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

                ForEach(musicPlayer.model.songs) { song in
                    SongView(song: song)
                        .onTapGesture {
                            musicPlayer.playSong(song)
                            print("Playing song:" + song.title)
                        }
                }
                Spacer()
                
            }
        }
        .background(Color("mainBackground"))
        //.edgesIgnoringSafeArea(.bottom)
    }
    
}


struct SongView: View {
    var song: MusicPlayerModel.Song
    
    var body: some View {
        HStack {
            if song.isPlaying {
                Image(systemName: "speaker.wave.3")
                    .font(.title3)
                Spacer()
            }
            
            VStack(alignment: .leading) {
                Text(song.title)
                    .font(song.isPlaying ? .headline : .title3)
                    .foregroundColor(Color(.label))

                Text("\(song.album) - \(song.artist)")
            }
            
            Spacer()
            Image(systemName: "ellipsis")
                .font(.title3)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color("mainSongSubInfo")/*@END_MENU_TOKEN@*/)
        }
        .foregroundColor(song.isPlaying ? Color("mainSongHovered") : /*@START_MENU_TOKEN@*/Color("mainSongSubInfo")/*@END_MENU_TOKEN@*/)
        .background(song.isPlaying ? Color("mainSongBackgroundHovered") : Color("mainBackground"))
        .font(.subheadline)
        .padding(.horizontal, 25)
        .padding(.vertical, 15)

    }
}

































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(musicPlayer: MusicPlayerViewModel())
            .preferredColorScheme(.dark)
            .statusBar(hidden: true)
    }
}

