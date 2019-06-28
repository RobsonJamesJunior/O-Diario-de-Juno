//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit
import AVFoundation // Biblioteca para utilizar sons

class Cena10ViewController: UIViewController {
    
    
    @IBOutlet weak var Cena10ImageView: UIImageView!
    var labelEnd: Bool = false
    //var audioPlayer = AVAudioPlayer()
    var initialView: Bool = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad() // Do any additional setup after loading the view, typically from a nib.
        initialView = true
        Cena10ImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena10Gif = UIImage.gifImageWithName("Cena_10") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena10
        Cena10ImageView.image = Cena10Gif // Adicionando a variável à tela de ImageView
        MusicHelper.sharedHelper.audioPlayer?.volume = 0.3
        Transito.sharedHelper.playBackgroundMusic()
        Transito.sharedHelper.audioPlayer?.volume = 1.5
        
        
    }
    
    
    
    
    @IBAction func StopSounTraffic(_ sender: Any) {
        Transito.sharedHelper.audioPlayer?.stop()
    }
    
    
    @IBAction func backToMenu(_ sender: Any) {
        Transito.sharedHelper.audioPlayer?.stop()
    }
    
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
