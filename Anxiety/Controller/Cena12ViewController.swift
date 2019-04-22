//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena12ViewController: UIViewController {
   
    @IBOutlet weak var pressToContinue: UIButton!
   
    @IBOutlet weak var Cena12ImageView: UIImageView!
    var labelEnd: Bool = false
    var initialView: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        // Do any additional setup after loading the view, typically from a nib.
        Cena12ImageView.isAccessibilityElement = true
        let Cena12Gif = UIImage.gifImageWithName("Cena_12") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena6
        Cena12ImageView.image = Cena12Gif // Adicionando a variável à tela de ImageView

    }
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
}
