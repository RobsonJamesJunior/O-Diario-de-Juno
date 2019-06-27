//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena2ViewController: UIViewController {
    
    var timer: Timer!
    var IsOk: Int = 0
    var validAnimation: Bool = true
    var fimDefrase: Bool =  false
    var initialView: Bool = false
    
    @IBOutlet weak var Cena2ImageView: UIImageView!
    
    @IBOutlet weak var dialoLabelCena2: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        // Do any additional setup after loading the view, typically from a nib.
        
        dialoLabelCena2.numberOfLines = 0
        dialoLabelCena2.font = UIFont(name: "IndieFlower", size: 22)
        dialoLabelCena2.numberOfLines = 2
        dialoLabelCena2.textColor = .black
        dialoLabelCena2.textAlignment = .center
        dialoLabelCena2.lineBreakMode = .byTruncatingHead
        
        Cena2ImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena2Gif = UIImage.gifImageWithName("Cena_2") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena2
        Cena2ImageView.image = Cena2Gif // Adicionando a variável à tela de ImageView
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Cena2ViewController.update), userInfo: nil, repeats: true)
        
    }
    
    
    @objc func update() {
        if initialView == true {
            // Função de atualização para opreações constantes
            if IsOk < cena1.count { // Variável que faz vibrar apenas uma vez
                // sleep(1)
                if validAnimation == true {
                    setLabelDialog()
                }
                //}
            } else{
                initialView = false
                performSegue(withIdentifier: "Segue2", sender: nil)
            }
        }
    }
    
    
    @IBAction func ContDialog(_ sender: Any) {
        validAnimation = false
        if fimDefrase == true {
            dialoLabelCena2.text?.removeAll()
            IsOk += 1
            validAnimation = true
            fimDefrase = false
        }
    }

   
    
    func setLabelDialog(){
        for letra in cena1[IsOk] {
            if validAnimation == false {
                dialoLabelCena2.text! = cena1[IsOk]
                break
                
            }
            
            dialoLabelCena2.text! += ("\(letra)")
            RunLoop.current.run(until: Date()+0.10)
            
        }
        fimDefrase = true
        validAnimation = false
    }
    
    
    @IBAction func backMenu(_ sender: Any) {
        initialView = false
        performSegue(withIdentifier: "BackMenu", sender: nil)
    }
    
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
}

