//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena13ViewController: UIViewController {
    
    @IBOutlet weak var Cena13ImageView: UIImageView!
    
    
    @IBOutlet weak var maoImage: UIImageView!
    
    
    @IBOutlet weak var orelhaArea: UIImageView!
    
    var escovaViewOrigin: CGPoint!
    var movendo = false
    
    var labelEnd: Bool = false
    var initialView: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        escovaViewOrigin = maoImage.frame.origin
        // Do any additional setup after loading the view, typically from a nib.
        Cena13ImageView.isAccessibilityElement = true
        let Cena13Gif = UIImage.gifImageWithName("Cena_13")
        
        let Cena13Image = Cena13Gif
        
        Cena13ImageView.image = Cena13Image // Adicionando a variável à tela de ImageView

        let pan = UIPanGestureRecognizer(target: self, action: #selector(Cena13ViewController.handlePan(sender:)))
       
        maoImage.addGestureRecognizer(pan)
        view.bringSubviewToFront(maoImage)
        
    }

    @objc func handlePan(sender: UIPanGestureRecognizer) {
        
        let escovaView = sender.view!
        
        switch sender.state {
            
        case .began, .changed:
            moveViewWithPan(view: maoImage, sender: sender)
            
        case .ended:
            if escovaView.frame.intersects(orelhaArea.frame) {
                returnViewToOrigin(view: escovaView)
                performSegue(withIdentifier: "segueOrelha", sender: nil)
            } else {
                returnViewToOrigin(view: escovaView)
                
            }
            
        default:
            break
        }
    }
    
    
    func moveViewWithPan(view: UIView, sender: UIPanGestureRecognizer) {
        
        movendo = true
        let translation = sender.translation(in: view)
        
        view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: view)
        
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("13 - Dispose of any resources that can be recreated")
    }
    
    deinit {
        print("Cena13 View Controller was de-initialized - \(self) - \(Date())")
    }
    
}
