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
    
    
    
    @IBOutlet weak var espumaContact: UIImageView!
    
    
    var escovaViewOrigin: CGPoint!
    var movendo = false
    var timer: Timer!
    var countEscova: Int = 0
    var semEscove: Bool = false
    
    
    var labelEnd: Bool = false
    var initialView: Bool = false
    
    let Bolha = UIImage.gifImageWithName("Bolha")
    
    @IBOutlet weak var buttonOut: UIButton!
    
    
    @IBOutlet weak var Cena4ImageView: UIImageView!

    //    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        escovaViewOrigin = EscovaImage.frame.origin
        semEscove = false
        movendo = false
        buttonOut.isHidden = true
        buttonOut.isEnabled = false
        
         let pan = UIPanGestureRecognizer(target: self, action: #selector(Cena8ViewController.handlePan(sender:)))
        EscovaImage.addGestureRecognizer(pan)
        view.bringSubviewToFront(EscovaImage)
        Mouth.image = Bolha
        Mouth.isHidden = true
        
        // Do any additional setup after loading the view, typically from a nib.
        Cena4ImageView.isAccessibilityElement = true// Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena4Gif = UIImage.gifImageWithName("Cena_4") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena4
        Cena4ImageView.image = Cena4Gif // Adicionando a variável à tela de ImageView
  
    }
    
    @objc func handlePan(sender: UIPanGestureRecognizer) {
       
        let escovaView = sender.view!
        
        switch sender.state {
            
        case .began, .changed:
            moveViewWithPan(view: escovaView, sender: sender)
            
        case .ended:
            if escovaView.frame.intersects(espumaContact.frame) {
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
        
        movendo = true
        let translation = sender.translation(in: view)
        
        view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: view)
        
        if !(view.frame.intersects(espumaContact.frame)) {
            semEscove = false
        } else if view.frame.intersects(espumaContact.frame), !semEscove {
            Mouth.isHidden = false
            countEscova += 1
            semEscove = true
            switch countEscova {
            case 1:
                Mouth.frame.size = CGSize(width: 270, height: 122)
                Mouth.center = self.view.center
            case 2:
                Mouth.frame.size = CGSize(width: 304, height: 148)
                Mouth.center = self.view.center
            case 3:
                Mouth.frame.size = CGSize(width: 334, height: 174)
                Mouth.center = self.view.center
            case 4:
                buttonOut.isHidden = false
                buttonOut.isEnabled = true
            default:
                print("ja foi irmão")
            }
            
            
            
            print(countEscova)
        }
        
        
    }
    
    func returnViewToOrigin(view: UIView) {
        
        movendo = false
        UIView.animate(withDuration: 0.3, animations: {
            view.frame.origin = self.escovaViewOrigin
        })
    }
    
    
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
