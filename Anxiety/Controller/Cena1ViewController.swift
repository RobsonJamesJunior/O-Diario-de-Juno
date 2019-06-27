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
    
    
    @IBOutlet weak var stopButtonOut: UIButton!
    

    @IBOutlet weak var alarmCell: UIImageView!
    var timer: Timer!
    var audioPlayer = AVAudioPlayer()
    var IsOk: Bool = false
    var initialView: Bool = false
    var teste = 0
    
    @IBAction func ButtonStopVibration(_ sender: Any) {
        IsOk = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        IsOk = false
        stopButtonOut.isHidden = true
        alarmCell.shake(duration: 2.0)
//        do {
//            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "ms3", ofType: "wav")!)) // colocando a música através do diretório
//            audioPlayer.prepareToPlay() // preparando o áudio
//        } catch {
//            print(error) // erro de áudio
//        }
        
        // Do any additional setup after loading the view, typically from a nib.
        Cena1ImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena1Gif = UIImage.gifImageWithName("Cena_1") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena1
        Cena1ImageView.image = Cena1Gif // Adicionando a variável à tela de ImageView
      
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(Cena1ViewController.update), userInfo: nil, repeats: true)

    }
    
    
    @objc func update() { // Função de atualização para opreações constantes

//audioPlayer.play() // dá o play no áudio
        
        if IsOk == false {
            for _ in 1...5 { // Repetição da quantidade de vibrações
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate) // Comando de vibrar
            }
         
        }
        
//        if !audioPlayer.isPlaying{
//           // audioPlayer.play()
//        }
    }
    
  //  func pulsing(){
  //      let pulse = Pulsing(numberOfPulses: 1, radius: 150, position: stopButtonOut.center)
   //     pulse.animationDuration = 3.0
        //     pulse2.backgroundColor = UIColor.blue.cgColor
   //     pulse.backgroundColor = #colorLiteral(red: 0.0736188814, green: 0.682425797, blue: 0.919788897, alpha: 1)
    //    self.view.layer.insertSublayer(pulse, below: stopButtonOut.layer)
  //  }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 1, animations: {self.alarmCell.frame.origin.y -= 310})
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
            self.stopButtonOut.isHidden = false
            self.alarmCell.shake(duration: 2.0)
            }
    }
    
    
    @IBAction func backMenu(_ sender: Any) {
        initialView = false
        performSegue(withIdentifier: "BackMenu", sender: nil)
        IsOk = true
    }
    

    override var prefersStatusBarHidden: Bool{
        return true
    }
    
}
