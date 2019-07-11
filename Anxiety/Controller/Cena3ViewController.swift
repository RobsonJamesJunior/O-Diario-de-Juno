//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit
import AVFoundation

class Cena3ViewController: UIViewController {
  
    var timer: Timer!
    var IsOk: Int = 0
    var validAnimation: Bool = true
    var fimDefrase: Bool =  false
    var labelEnd: Bool = false
    var initialView: Bool = false
    
    @IBOutlet weak var Cena3ImageView: UIImageView!
    
    @IBOutlet weak var dialogLabelCena3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        // Do any additional setup after loading the view, typically from a nib.
        
        dialogLabelCena3.numberOfLines = 0
        dialogLabelCena3.font = UIFont(name: "IndieFlower", size: 22)
        dialogLabelCena3.numberOfLines = 2
        dialogLabelCena3.textColor = .black
        dialogLabelCena3.textAlignment = .center
        dialogLabelCena3.lineBreakMode = .byTruncatingHead
        
        Cena3ImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena3Gif = UIImage.gifImageWithName("Cena_3") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena3
        Cena3ImageView.image = Cena3Gif // Adicionando a variável à tela de ImageView
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Cena3ViewController.update), userInfo: nil, repeats: true)
        
    }
    
    
    @objc func update() { // Função de atualização para opreações constantes
        if IsOk < cena2.count { // Variável que faz vibrar apenas uma vez
            //sleep(1)
            if validAnimation == true {
                setLabelDialog()
            }
        } else{
            initialView = false
            performSegue(withIdentifier: "Segue3", sender: nil)
            self.timer.invalidate()
        }
        
    }
    
    
    @IBAction func setDialogCena3(_ sender: Any) {
        validAnimation = false
        if fimDefrase == true {
            dialogLabelCena3.text?.removeAll()
            IsOk += 1
            validAnimation = true
            fimDefrase = false
        }
    }
    
 
    
    func setLabelDialog(){
        for letra in cena2[IsOk] {
            if validAnimation == false {
                dialogLabelCena3.text! = cena2[IsOk]
                break
            }
            dialogLabelCena3.text! += ("\(letra)")
            RunLoop.current.run(until: Date()+0.10)
        }
        fimDefrase = true
        validAnimation = false
    }

    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("3 - Dispose of any resources that can be recreated")
    }
    
    deinit {
        print("Cena3 View Controller was de-initialized - \(self) - \(Date())")
    }
    
}
