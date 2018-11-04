//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit
import AudioToolbox // Biblioteca para utilizar vibração
import AVFoundation // Biblioteca para utilizar sons

class Cena1ViewController: UIViewController {
    
    @IBOutlet weak var Cena1ImageView: UIImageView!
    
    var timer: Timer!
    var audioPlayer = AVAudioPlayer()
    var controlVibration: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "passaro_acordar", ofType: "mp3")!)) // colocando a música através do diretório
            audioPlayer.prepareToPlay() // preparando o áudio
        } catch {
            print(error) // erro de áudio
        }
        
        // Do any additional setup after loading the view, typically from a nib.
        Cena1ImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena1Gif = UIImage.gifImageWithName("Cena_1") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena1
        Cena1ImageView.image = Cena1Gif // Adicionando a variável à tela de ImageView
      
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Cena1ViewController.update), userInfo: nil, repeats: true)

    }
    
    
    @objc func update() { // Função de atualização para opreações constantes
        if controlVibration == false{ // Variável que faz vibrar apenas uma vez
            audioPlayer.play() // dá o play no áudio
            for _ in 1...5 { // Repetição da quantidade de vibrações
                AudioServicesPlaySystemSound(kSystemSoundID_Vibrate) // Comando de vibrar
                sleep(1) // delay do comando
                controlVibration = true
            }
        } else{
            
        }
    }
    
    
    
}
