//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena9ViewController: UIViewController {
    
    
    @IBOutlet weak var Cena9ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Cena9ImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena9Gif = UIImage.gifImageWithName("Cena_9") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena9
        Cena9ImageView.image = Cena9Gif // Adicionando a variável à tela de ImageView
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}

