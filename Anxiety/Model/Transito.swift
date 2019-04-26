//
//  Transito.swift
//  Anxiety
//
//  Created by Lucídio Andrade Barbosa de Souza on 23/04/19.
//  Copyright © 2019 Joel Menezes Hamon. All rights reserved.
//

import Foundation
import AVFoundation

class Transito {
    static let sharedHelper = Transito()
    var audioPlayer: AVAudioPlayer?
    
    func playBackgroundMusic() {
        let aSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "transito3", ofType: "wav")!)
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
