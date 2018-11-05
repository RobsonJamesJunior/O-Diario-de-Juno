//
//  Cena23ViewController.swift
//  Anxiety
//
//  Created by Robson James Junior on 04/11/18.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//


import UIKit

class Cena23ViewController: UIViewController {
    
    @IBOutlet weak var Cena23ImageView: UIImageView!
    
    var inspBool: Bool = false
    var respBool: Bool = false
    var countAlc: Int = 0
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Cena23ImageView.isAccessibilityElement = true
        let Cena23Gif = UIImage.gifImageWithName("Cena_23") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
        Cena23ImageView.image = Cena23Gif // Adicionando a variável à tela de ImageView
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Cena7ViewController.update), userInfo: nil, repeats: true)
        
    }
    
    
    @objc func update() { // Função de atualização para opreações constantes
        if inspBool == true && respBool == true {
            countAlc += 1
            respBool = false
            inspBool = false
            print(countAlc)
        }
        if countAlc == 5 {
            performSegue(withIdentifier: "Segue23", sender: nil)
        }
    }
    
    
    @IBAction func InspirarButton(_ sender: Any) {
        inspBool = true
        let Cena23Gif = UIImage.gifImageWithName("Cena_23") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
        Cena23ImageView.image = Cena23Gif // Adicionando a variável à tela de ImageView
    }
    
    @IBAction func RespirarButton(_ sender: Any) {
        respBool = true
         let Cena23_2Gif = UIImage.gifImageWithName("Cena_23_2") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
         Cena23ImageView.image = Cena23_2Gif // Adicionando a variável à tela de ImageView
    }
    
    
}
