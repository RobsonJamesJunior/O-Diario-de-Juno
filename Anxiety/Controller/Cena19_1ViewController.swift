//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena19_1ViewController: UIViewController {

    @IBOutlet weak var Cena19_1ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Cena19_1ImageView.isAccessibilityElement = true
        let Cena19_1Gif = UIImage.gifImageWithName("Cena_19_1") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
        Cena19_1ImageView.image = Cena19_1Gif // Adicionando a variável à tela de ImageView
    }
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
