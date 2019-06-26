//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena11ViewController: UIViewController {
    
    @IBOutlet weak var Cena11ImageView: UIImageView!
    var labelEnd: Bool = false
    var initialView: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MusicHelper.sharedHelper.audioPlayer?.volume = 1
        initialView = true
        // Do any additional setup after loading the view, typically from a nib.
        Cena11ImageView.isAccessibilityElement = true
   //     let Cena11Gif = UIImage.gifImageWithName("Cena_11") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena6
        
        let Cena11Image = UIImage.init(named: "Cena_11")
        
        Cena11ImageView.image = Cena11Image // Adicionando a variável à tela de ImageView
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
