//
//  Cena23ViewController.swift
//  Anxiety
//
//  Created by Robson James Junior on 04/11/18.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//


import UIKit

class Cena24ViewController: UIViewController {
    
    
    @IBOutlet weak var Cena24ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Cena24ImageView.isAccessibilityElement = true
        let Cena24Gif = UIImage.gifImageWithName("Cena_24") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
        Cena24ImageView.image = Cena24Gif // Adicionando a variável à tela de ImageView
    }
    
    
}
