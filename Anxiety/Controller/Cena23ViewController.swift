//
//  Cena23ViewController.swift
//  Anxiety
//
//  Created by Robson James Junior on 04/11/18.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//


import UIKit
import AudioToolbox // Biblioteca para utilizar vibração

class Cena23ViewController: UIViewController, UIGestureRecognizerDelegate  {
    
    @IBOutlet weak var Cena23ImageView: UIImageView!
    
    @IBOutlet weak var respImageView: UIImageView!
    
    
    var inspBool: Bool = false
    var respBool: Bool = false
    var countAlc: Int = 0
    var timer: Timer!
    var portVib: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Cena23ImageView.isAccessibilityElement = true
        
        let imagemInitial = UIImage.init(named: "respira")
        respImageView.image = imagemInitial
        
        respImageView.isUserInteractionEnabled = true
        
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(Cena23ViewController.addPulse))
        
        longPress.minimumPressDuration = 0.5
        longPress.delegate = self
        self.respImageView.addGestureRecognizer(longPress)
        
        let Cena23Gif = UIImage.gifImageWithName("Cena_23") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
        Cena23ImageView.image = Cena23Gif // Adicionando a variável à tela de ImageView
  
    }
    
   
    @objc func addPulse(){
        if countAlc == 0 {
            let Cena23_2Gif = UIImage.gifImageWithName("Cena_23_2")
            Cena23ImageView.image = Cena23_2Gif
            countAlc = 1
        } else {
            let Cena23Gif = UIImage.gifImageWithName("Cena_23")
            Cena23ImageView.image = Cena23Gif
            countAlc = 0
        }
        
        let pulse = Pulsing(numberOfPulses: 1, radius: 110, position: respImageView.center)
        pulse.animationDuration = 0.8
        pulse.backgroundColor = UIColor.blue.cgColor

        self.view.layer.insertSublayer(pulse, below: respImageView.layer)
    }
    
    
// button inspirar
//        if inspBool == false {
//            inspBool = true
//            let Cena23Gif = UIImage.gifImageWithName("Cena_23") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
//            Cena23ImageView.image = Cena23Gif // Adicionando a variável à tela de ImageView
//        }
    
    
// button respirar
//        if respBool == false {
//            respBool = true
//            let Cena23_2Gif = UIImage.gifImageWithName("Cena_23_2") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
//            Cena23ImageView.image = Cena23_2Gif // Adicionando a variável à tela de ImageView
//        }
    
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
}
