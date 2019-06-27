//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena18ViewController: UIViewController {
    
    @IBOutlet weak var Cena18ImageView: UIImageView!
    var labelEnd: Bool = false
    var initialView: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        // Do any additional setup after loading the view, typically from a nib.
        Cena18ImageView.isAccessibilityElement = true
        let Cena18Gif = UIImage.gifImageWithName("Cena_18")
        
        
        let Cena18Image = Cena18Gif
        
        Cena18ImageView.image = Cena18Image // Adicionando a variável à tela de ImageView
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
