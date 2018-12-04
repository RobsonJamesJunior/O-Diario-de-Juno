//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit
import AVFoundation // Biblioteca para utilizar sons

class Cena8ViewController: UIViewController {
    
    @IBOutlet weak var Cena8ImageView: UIImageView!
    // var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var keyImageView: UIImageView!
    @IBOutlet weak var fechaduraImageView: UIImageView!
    
    var keyViewOrigin: CGPoint!
    
    func addPanGesture(view: UIView){
        let pan = UIPanGestureRecognizer(target: self, action: #selector (Cena8ViewController.handlePan(sender:)))
        view.addGestureRecognizer(pan)
    }
    
    @objc func handlePan(sender: UIPanGestureRecognizer){
        let keyView = sender.view!
        let translation = sender.translation(in: Cena8ImageView)
        switch sender.state {
        case .began, .changed:
            //move
            keyView.center = CGPoint(x: keyView.center.x + translation.x , y: keyView.center.y + translation.y)
            sender.setTranslation(CGPoint.zero, in: Cena8ImageView)
        case .ended:
            //delete
            if keyView.frame.intersects(fechaduraImageView.frame){
                UIView.animate(withDuration: 0.3, animations: {
                    self.keyImageView.alpha = 0.0
                })
               // audioPlayer.play()
                performSegue(withIdentifier: "next", sender: self)
            } else {
                //return
                UIView.animate(withDuration: 0.3, animations: {
                    self.keyImageView.frame.origin = self.keyViewOrigin
                })
            }
        default:
            break
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
        Cena8ImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena8Gif = UIImage.gifImageWithName("Cena_8") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena8
        Cena8ImageView.image = Cena8Gif // Adicionando a variável à tela de ImageView
//        do {
//            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "chave", ofType: "wav")!)) // colocando a música através do diretório
//            audioPlayer.prepareToPlay() // preparando o áudio
//        } catch {
//            print(error) // erro de áudio
//        }
        
        addPanGesture(view: keyImageView)
        keyViewOrigin = keyImageView.frame.origin
        Cena8ImageView.bringSubviewToFront(keyImageView)
        
    }
    
    
    
//    @IBAction func keySegueScene(_ sender: Any) {
//        audioPlayer.play()
//    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
