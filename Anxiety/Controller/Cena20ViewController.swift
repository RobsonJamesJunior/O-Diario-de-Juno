//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena20ViewController: UIViewController {
   
    @IBOutlet weak var Cena20ImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Cena20ImageView.isAccessibilityElement = true
        let Cena20Gif = UIImage.gifImageWithName("Cena_20") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
        Cena20ImageView.image = Cena20Gif // Adicionando a variável à tela de ImageView
    }
    
    
}
