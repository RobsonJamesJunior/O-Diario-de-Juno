//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena18ViewController: UIViewController {
    
    @IBOutlet weak var Cena18ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Cena18ImageView.isAccessibilityElement = true
        let Cena18Gif = UIImage.gifImageWithName("Cena_18") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
        Cena18ImageView.image = Cena18Gif // Adicionando a variável à tela de ImageView
    }
    
    
}
