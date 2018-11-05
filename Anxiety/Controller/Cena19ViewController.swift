//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena19ViewController: UIViewController {
 
    @IBOutlet weak var Cena19ImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Cena19ImageView.isAccessibilityElement = true
        let Cena19Gif = UIImage.gifImageWithName("Cena_19") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
        Cena19ImageView.image = Cena19Gif // Adicionando a variável à tela de ImageView
    }
    
    
}
