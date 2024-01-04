 //
//  SwiftUIView.swift
//  Captivating Mind Radio
//
//  Created by Mike Harrison on 11/9/23.
//

import SwiftUI
import AVFoundation

struct player: View {
    @ObservedObject var radioPlayer = RadioPlayer()
    var body: some View {
        VStack {
             Text("")
                 .font(.title)
                 .padding()

             Button(action: {
                 if self.radioPlayer.isPlaying {
                     self.radioPlayer.stop()
                 } else {
                     self.radioPlayer.play()
                 }
             }) {
                 Image(systemName: radioPlayer.isPlaying ? "pause.circle.fill" : "play.circle.fill")
                     .font(.system(size: 100))
                     .foregroundColor(.orange)
                     .shadow(color: .black, radius: 4, x: -2, y: 1)
             }
         }
     }
 }

 class RadioPlayer: ObservableObject {
     private var audioPlayer: AVPlayer?

     @Published var isPlaying = false

     func play() {
         guard let url = URL(string: "https://stream.zeno.fm/lo2dd6zbzifvv") else {
             print("Invalid radio stream URL")
             return
         }

         let playerItem = AVPlayerItem(url: url)
         audioPlayer = AVPlayer(playerItem: playerItem)
         audioPlayer?.play()

         isPlaying = true
     }

     func stop() {
         audioPlayer?.pause()
         audioPlayer = nil

         isPlaying = false
     }
     
 }




#Preview {
    player()
}
