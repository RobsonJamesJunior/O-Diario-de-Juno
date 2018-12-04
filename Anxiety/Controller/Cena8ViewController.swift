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
   
    @IBOutlet weak var key: UIImageView!
    
    @IBOutlet weak var fech: UIImageView!
    
    var keyViewOrigin: CGPoint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
        Cena8ImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena8Gif = UIImage.gifImageWithName("Cena_8") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena8
        Cena8ImageView.image = Cena8Gif // Adicionando a variável à tela de ImageView
        
        let gifChave = UIImage.gifImageWithName("key") // variável com gif do asset da chave
        key.image = gifChave // setando o asset gif no ImageView
        
        addPanGesture(view: key)
        keyViewOrigin = key.frame.origin
       // view.bringSubviewToFront(key)
        
//        do {
//            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "chave", ofType: "wav")!)) // colocando a música através do diretório
//            audioPlayer.prepareToPlay() // preparando o áudio
//        } catch {
//            print(error) // erro de áudio
//        }
        
    }
    
    func addPanGesture(view: UIView) {
        
        let pan = UIPanGestureRecognizer(target: self, action: #selector(Cena8ViewController.handlePan(sender:)))
        view.addGestureRecognizer(pan)
       
    }
    
    @objc func handlePan(sender: UIPanGestureRecognizer) {
        
        let keyView = sender.view!
        
        switch sender.state {
            
        case .began, .changed:
            moveViewWithPan(view: keyView, sender: sender)
            
        case .ended:
            if keyView.frame.intersects(fech.frame) {
                deleteView(view: keyView)
                
            } else {
                returnViewToOrigin(view: keyView)
            }
            
        default:
            break
        }
    }
    
    
    
    
    func moveViewWithPan(view: UIView, sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: view)
        
        view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: view)
    }
    
    func returnViewToOrigin(view: UIView) {
        
        UIView.animate(withDuration: 0.3, animations: {
            view.frame.origin = self.keyViewOrigin
        })
    }
    
    
    func deleteView(view: UIView) {
        
        UIView.animate(withDuration: 0.3, animations: {
            view.alpha = 0.0
        })
    }
  
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
