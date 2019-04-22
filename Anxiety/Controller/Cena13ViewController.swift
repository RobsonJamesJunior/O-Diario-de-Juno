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
    var labelEnd: Bool = false
    var initialView: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        // Do any additional setup after loading the view, typically from a nib.
        Cena13ImageView.isAccessibilityElement = true
        let Cena13Gif = UIImage.gifImageWithName("Cena_13") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena6
        Cena13ImageView.image = Cena13Gif // Adicionando a variável à tela de ImageView
    }
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
}
