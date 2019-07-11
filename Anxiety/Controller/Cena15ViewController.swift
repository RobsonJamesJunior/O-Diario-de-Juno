//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena15ViewController: UIViewController {
    
    
    @IBOutlet weak var Cena15ImageView: UIImageView!
    var labelEnd: Bool = false
    var initialView: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        // Do any additional setup after loading the view, typically from a nib.
        Cena15ImageView.isAccessibilityElement = true
        let Cena15Gif = UIImage.gifImageWithName("Cena_15") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
        Cena15ImageView.image = Cena15Gif // Adicionando a variável à tela de ImageView
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("15 - Dispose of any resources that can be recreated")
    }
    
    deinit {
        print("Cena15 View Controller was de-initialized - \(self) - \(Date())")
    }
    
}
