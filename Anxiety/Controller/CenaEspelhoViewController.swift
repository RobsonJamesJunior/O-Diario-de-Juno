//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class CenaEspelhoViewController: UIViewController {
    
    @IBOutlet weak var CenaEspelhoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        CenaEspelhoImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
        let CenaESPGif = UIImage.gifImageWithName("Cena_ESP") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da CenaESPELHO
        CenaEspelhoImageView.image = CenaESPGif // Adicionando a variável à tela de ImageView
    }
        
}
