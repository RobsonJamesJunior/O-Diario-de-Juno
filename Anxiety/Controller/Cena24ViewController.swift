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
    var labelEnd: Bool = false
    var initialView: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
         initialView = true
        // Do any additional setup after loading the view, typically from a nib.
        Cena24ImageView.isAccessibilityElement = true
        let Cena24 = UIImage.init(named: "ToBeContinue") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
        Cena24ImageView.image = Cena24 // Adicionando a variável à tela de ImageView
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
