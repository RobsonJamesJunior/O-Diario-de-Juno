//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena4ViewController: UIViewController {
    
    
    @IBOutlet weak var Cena4ImageView: UIImageView!
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Cena4ImageView.isAccessibilityElement = true// Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena4Gif = UIImage.gifImageWithName("Cena_4") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena4
        Cena4ImageView.image = Cena4Gif // Adicionando a variável à tela de ImageView
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Cena4ViewController.update), userInfo: nil, repeats: true)
        
    }
    
    
    @objc func update() { // Função de atualização para opreações constantes
        performSegue(withIdentifier: "Segue4", sender: nil)
    }
    
}
