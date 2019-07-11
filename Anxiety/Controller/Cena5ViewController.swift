//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit
import AVFoundation // Biblioteca para utilizar sons

class Cena5ViewController: UIViewController {
    
    
    @IBOutlet weak var Cena5ImageView: UIImageView!
    var audioPlayer = AVAudioPlayer()
    var timer: Timer!
    var IsOk: Int = 0
    var validAnimation: Bool = true
    var fimDefrase: Bool =  false
    var labelEnd: Bool = false
    var initialView: Bool = false
    var count = 10
    
    var filter = CIFilter(name: "CIGaussianBlur")
    
    
    @IBOutlet weak var dialogLabelCena5: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        // Do any additional setup after loading the view, typically from a nib.
        
        
        dialogLabelCena5.numberOfLines = 0
        dialogLabelCena5.font = UIFont(name: "IndieFlower", size: 22)
        dialogLabelCena5.numberOfLines = 2
        dialogLabelCena5.textColor = .black
        dialogLabelCena5.textAlignment = .center
        dialogLabelCena5.lineBreakMode = .byTruncatingHead
        
        
        Cena5ImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena5Gif = UIImage.gifImageWithName("Cena_5") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena5
        Cena5ImageView.image = Cena5Gif // Adicionando a variável à tela de ImageView

        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Cena5ViewController.update), userInfo: nil, repeats: true)
        
    }
    
    
    @IBAction func setDialogCena5(_ sender: Any) {
        validAnimation = false
        if fimDefrase == true{ dialogLabelCena5.text?.removeAll()
            IsOk += 1
            validAnimation = true
            fimDefrase = false
        }
    }
    
    @objc func update() { // Função de atualização para opreações constantes
        if IsOk < cena4.count { // Variável que faz vibrar apenas uma vez
            if validAnimation == true {
                setLabelDialog()
            }
        } else {
            initialView = false
            performSegue(withIdentifier: "Segue5", sender: nil)
            self.timer.invalidate()
        }
        
    }
    
    
    func setLabelDialog(){
        for letra in cena4[IsOk] {
            if validAnimation == false {
                dialogLabelCena5.text! = cena4[IsOk]
                break
            }
            dialogLabelCena5.text! += ("\(letra)")
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
        print("5 - Dispose of any resources that can be recreated")
    }
    
    deinit {
        print("Cena5 View Controller was de-initialized - \(self) - \(Date())")
    }
    
}
