//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena20ViewController: UIViewController {
   
    @IBOutlet weak var Cena20ImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Cena20ImageView.isAccessibilityElement = true
        let Cena20Gif = UIImage.gifImageWithName("Cena_20") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
        Cena20ImageView.image = Cena20Gif // Adicionando a variável à tela de ImageView
    }
    
 
    @IBOutlet weak var butto12: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button3: UIButton!    
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    
    
    @IBAction func buttonPe12(_ sender: Any) {
    }
    
    
    @IBAction func buttonPe11(_ sender: Any) {
    }
    
    
    @IBAction func buttonPe10(_ sender: Any) {
    }
    
  
    @IBAction func buttonPe9(_ sender: Any) {
    }
    
    
    @IBAction func buttonPe8(_ sender: Any) {
    }
    
    
    
    @IBAction func buttonPe7(_ sender: Any) {
    }
    
    
    
    @IBAction func buttonPe6(_ sender: Any) {
    }
    
    
    
    @IBAction func buttonPe5(_ sender: Any) {
    }
    
    
    
    @IBAction func buttonPe4(_ sender: Any) {
    }
    
    
    
    @IBAction func buttonPe3(_ sender: Any) {
    }
    
    @IBAction func buttonPe2(_ sender: Any) {
    }
    
    
    @IBAction func buttonPe1(_ sender: Any) {
      
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
}
