//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena14ViewController: UIViewController {
  
    @IBOutlet weak var Cena14ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Cena14ImageView.isAccessibilityElement = true
        let Cena14Gif = UIImage.gifImageWithName("Cena_14") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena6
        Cena14ImageView.image = Cena14Gif // Adicionando a variável à tela de ImageView
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
