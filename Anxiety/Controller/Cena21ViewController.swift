//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena21ViewController: UIViewController {

    
    @IBOutlet weak var Cena21ImageView: UIImageView!
    var labelEnd: Bool = false
    var initialView: Bool = false
    
     override func viewDidLoad() {
        super.viewDidLoad()
         initialView = true
//         Do any additional setup after loading the view, typically from a nib.
            Cena21ImageView.isAccessibilityElement = true
            let Cena21Gif = UIImage.gifImageWithName("Cena_21") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
            Cena21ImageView.image = Cena21Gif // Adicionando a variável à tela de ImageView
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("21 - Dispose of any resources that can be recreated")
    }
    
    deinit {
        print("Cena21 View Controller was de-initialized - \(self) - \(Date())")
    }
    
}
