//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena7ViewController: UIViewController {
    
    @IBOutlet weak var DicasLabel: UILabel!
    @IBOutlet weak var Cena7ImageView: UIImageView!
    
    override func viewWillAppear(_ animated:Bool) {
        super.viewWillAppear(animated)
        
        DicasLabel.center.x += view.bounds.height
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //animeted label
        UIView.animate(withDuration: 1.0, animations:{
            
            self.DicasLabel.center.x -= self.view.bounds.height
            
        })
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Cena7ImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena7Gif = UIImage.gifImageWithName("Cena_7") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena7
        Cena7ImageView.image = Cena7Gif // Adicionando a variável à tela de ImageView
    }
    
    
}
