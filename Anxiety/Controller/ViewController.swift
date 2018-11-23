//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MainCenaImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        MainCenaImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena1Gif = UIImage.gifImageWithName("menu") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena1
        MainCenaImageView.image = Cena1Gif // Adicionando a variável à tela de ImageView
        
        
    }
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
