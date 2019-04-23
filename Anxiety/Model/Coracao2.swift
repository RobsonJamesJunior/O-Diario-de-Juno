//
//  coracao2.swift
//  Anxiety
//
//  Created by Lucídio Andrade Barbosa de Souza on 23/04/19.
//  Copyright © 2019 Joel Menezes Hamon. All rights reserved.
//

import Foundation
import AVFoundation

class Coracao2 {
    static let sharedHelper = Coracao2()
    var audioPlayer: AVAudioPlayer?
    
    func playBackgroundMusic() {
        let aSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "coraçao2", ofType: "mp3")!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:aSound as URL)
            audioPlayer!.numberOfLoops = 1
            audioPlayer!.prepareToPlay()
            audioPlayer!.play()
        } catch {
            print("Cannot play the file")
        }
    }
}

