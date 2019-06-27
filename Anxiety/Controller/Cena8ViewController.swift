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
    var labelEnd: Bool = false
    var initialView: Bool = false
    var timer: Timer!
    var movendo = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        movendo = false
        
        Cena8ImageView.isAccessibilityElement = true
        
        let Cena8Image = UIImage.init(named: "Cena_8")
        
        Cena8ImageView.image = Cena8Image
        
        fech.image = nil
        
        let chave = UIImage.init(named: "chave")// variável com gif do asset da chave
        key.image = chave // setando o asset gif no ImageView
        
        keyViewOrigin = key.frame.origin // posicao da key Asset
        
        let pan = UIPanGestureRecognizer(target: self, action: #selector(Cena8ViewController.handlePan(sender:)))
        
        key.addGestureRecognizer(pan)
        
        view.bringSubviewToFront(key)
        
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(Cena8ViewController.update), userInfo: nil, repeats: true)
    
    }
    
    
    func shakeKey() {
        let center = key.center
        
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        let fromPoint = CGPoint(x: center.x - 5, y: center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        let toPoint = CGPoint(x: center.x + 5, y: center.y)
        let toValue = NSValue(cgPoint: toPoint)
        shake.fromValue = fromValue
        shake.toValue = toValue
        key.layer.add(shake, forKey: "position")
        
        let pulse1 = Pulsing(numberOfPulses: 1, radius: 35, position: fech.center)
        pulse1.animationDuration = 1.0
        //  pulse1.backgroundColor = UIColor.blue.cgColor
        pulse1.backgroundColor = #colorLiteral(red: 0.0736188814, green: 0.682425797, blue: 0.919788897, alpha: 1)
        self.view.layer.insertSublayer(pulse1, below: fech.layer)
    }
    

    
    @objc func handlePan(sender: UIPanGestureRecognizer) {
        print ("Handle Pan")
        let keyView = sender.view!
        
        switch sender.state {
            
        case .began, .changed:
            moveViewWithPan(view: keyView, sender: sender)
            
        case .ended:
            if keyView.frame.intersects(fech.frame) {
                deleteView(view: keyView)
                initialView = false
                 performSegue(withIdentifier: "next", sender: nil)
            } else {
                returnViewToOrigin(view: keyView)
                shakeKey()
            }
            
        default:
            break
        }
    }
    
    @objc func update() {// Função de atualização para opreações constantes
//        pulsedFech()
        if movendo == false {
            shakeKey()
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
            view.frame.origin = self.keyViewOrigin
        })
    }
    
    
    func deleteView(view: UIView) {
        print ("Deletando")
        UIView.animate(withDuration: 0.3, animations: {
            view.alpha = 0.0
        })
    }
  
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
