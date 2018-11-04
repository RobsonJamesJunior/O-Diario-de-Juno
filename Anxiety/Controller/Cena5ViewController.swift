//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit
import AVFoundation // Biblioteca para utilizar sons

class Cena5ViewController: UIViewController {
    
    @IBOutlet weak var Cena5ImageView: UIImageView!
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Cena5ImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena5Gif = UIImage.gifImageWithName("Cena_5") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena5
        Cena5ImageView.image = Cena5Gif // Adicionando a variável à tela de ImageView
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "agua_pia", ofType: "mp3")!)) // colocando a música através do diretório
            audioPlayer.prepareToPlay() // preparando o áudio
        } catch {
            print(error) // erro de áudio
        }
        
        audioPlayer.play() // dá o play no áudio
    }
    
    
}
