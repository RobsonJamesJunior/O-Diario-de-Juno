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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Cena11ImageView.isAccessibilityElement = true
        let Cena11Gif = UIImage.gifImageWithName("Cena_11") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena6
        Cena11ImageView.image = Cena11Gif // Adicionando a variável à tela de ImageView
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
