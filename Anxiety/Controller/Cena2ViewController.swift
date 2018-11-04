//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena2ViewController: UIViewController {
    
    //esse é o colisor que sera usado para deletar as palavras
    
    @IBOutlet weak var Cena2ImageView: UIImageView!
    
    @IBOutlet weak var Palavra1: UILabel!
    
    @IBOutlet weak var Palavra2: UILabel!
    
    @IBOutlet weak var Palavra3: UILabel!
    
    @IBOutlet weak var Palavra4: UILabel!
    
    @IBOutlet weak var Palavra5: UILabel!
    
    @IBOutlet weak var Palavra6: UILabel!
    
    @IBOutlet weak var Palavra7: UILabel!
    
    @IBAction func StartGame(_ sender: Any) {
        
        
    }
    
    func fazerBotoesDiminuir(){
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Cena2ImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena2Gif = UIImage.gifImageWithName("Cena_2") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena2
        Cena2ImageView.image = Cena2Gif // Adicionando a variável à tela de ImageView
        
        
    }
    
    
}
