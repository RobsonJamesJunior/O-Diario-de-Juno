//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena16ViewController: UIViewController {
    
    
    @IBOutlet weak var Cena16ImageView: UIImageView!
    var labelEnd: Bool = false
    var initialView: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        // Do any additional setup after loading the view, typically from a nib.
        Cena16ImageView.isAccessibilityElement = true
        let Cena16Gif = UIImage.gifImageWithName("Cena_16") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
        Cena16ImageView.image = Cena16Gif // Adicionando a variável à tela de ImageView
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("16 - Dispose of any resources that can be recreated")
    }
    
    deinit {
        print("Cena16 View Controller was de-initialized - \(self) - \(Date())")
    }
    
}
