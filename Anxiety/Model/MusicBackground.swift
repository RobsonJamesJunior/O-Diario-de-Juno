//
//  File.swift
//  Anxiety
//
//  Created by Lucídio Andrade Barbosa de Souza on 23/04/19.
//  Copyright © 2019 Joel Menezes Hamon. All rights reserved.
//

import Foundation
import AVFoundation

class MusicHelper {
    static let sharedHelper = MusicHelper()
    var audioPlayer: AVAudioPlayer?
    
    func playBackgroundMusic(nome: String, type: String) {
        let aSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: nome, ofType: type)!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:aSound as URL)
            audioPlayer!.numberOfLoops = -1
            audioPlayer!.prepareToPlay()
            audioPlayer!.play()
        } catch {
            print("Cannot play the file")
        }
    }
}
