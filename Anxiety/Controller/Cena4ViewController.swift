//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit
import AVFoundation

class Cena4ViewController: UIViewController {
    
    
    @IBOutlet weak var EscovaImage: UIImageView!
    
    @IBOutlet weak var Mouth: UIImageView!
    var escovaViewOrigin: CGPoint!
    var movendo = false
    var timer: Timer!
    
    
    var labelEnd: Bool = false
    var initialView: Bool = false
    
    @IBOutlet weak var Cena4ImageView: UIImageView!
//    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        escovaViewOrigin = EscovaImage.frame.origin
       
        movendo = false
         let pan = UIPanGestureRecognizer(target: self, action: #selector(Cena8ViewController.handlePan(sender:)))
        EscovaImage.addGestureRecognizer(pan)
        view.bringSubviewToFront(EscovaImage)
        
        
        // Do any additional setup after loading the view, typically from a nib.
        Cena4ImageView.isAccessibilityElement = true// Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena4Gif = UIImage.gifImageWithName("Cena_4") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena4
        Cena4ImageView.image = Cena4Gif // Adicionando a variável à tela de ImageView
  
    }
    
    @objc func handlePan(sender: UIPanGestureRecognizer) {
        print ("Handle Pan")
        let escovaView = sender.view!
        
        switch sender.state {
            
        case .began, .changed:
            moveViewWithPan(view: escovaView, sender: sender)
            
        case .ended:
            if escovaView.frame.intersects(Mouth.frame) {
                returnViewToOrigin(view: escovaView)
               // performSegue(withIdentifier: "next", sender: nil)
            } else {
                returnViewToOrigin(view: escovaView)
                
            }
            
        default:
            break
        }
    }
    
    @objc func update() {// Função de atualização para opreações constantes
        if movendo == false {
            
        }
    }
    
    
    
    func moveViewWithPan(view: UIView, sender: UIPanGestureRecognizer) {
        print ("Movendo")
        movendo = true
        let translation = sender.translation(in: view)
        
        view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: view)
    }
    
    func returnViewToOrigin(view: UIView) {
        print ("Voltando")
        movendo = false
        UIView.animate(withDuration: 0.3, animations: {
            view.frame.origin = self.escovaViewOrigin
        })
    }
    
    
//    func deleteView(view: UIView) {
//        print ("Deletando")
//        UIView.animate(withDuration: 0.3, animations: {
//            view.alpha = 0.0
//        })
//    }

    override var prefersStatusBarHidden: Bool{
        return true
    }
}
