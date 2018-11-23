//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena12ViewController: UIViewController {
    
    var currentValue: Int = 0
    var targetValue: Int = 0
    var contadorDerounds: Int = 1
   
    @IBOutlet weak var pressToContinue: UIButton!
    func startNewRound(){
        if contadorDerounds > 3{
            pressToContinue.isHidden = false
        }
        //contadorDerounds+=1
       // round.text = String(contadorDerounds)
        contadorDerounds+=1
        
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
    }
    
    func upDateLabel(){
        targetLabel.text = String(targetValue)
    }
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    
    @IBAction func showAlert(_ sender: Any) {
        let diference:Int = abs(currentValue - targetValue)
       // let point: Int = 100 - diference
       // score += point
        
        
        var title: String
        
        if diference == 0{
            title = "Perfeito!"
            //score += 100
        }else if diference < 5{
            title = "Quase acertou!"
           // score += 50
        }else{
            title = "Passou longe!"
        }
        
        let message: String = "\n\(title)" + "\nO valor que você colocou foi: \(currentValue) de \(targetValue)"
        
        let alert = UIAlertController(title: "Pontuação", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
       // scoreValue.text = String(score)
        startNewRound()
        upDateLabel()
    }
    
    @IBAction func slideMoved(_ slider: UISlider) {
        
        currentValue = lroundf(slider.value)//arredonda o valor float
        //print("O valor do slider é \(currentValue)")
        
        
    }
    @IBOutlet weak var Cena12ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Cena12ImageView.isAccessibilityElement = true
        let Cena12Gif = UIImage.gifImageWithName("Cena_12") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena6
        Cena12ImageView.image = Cena12Gif // Adicionando a variável à tela de ImageView
        startNewRound()
        upDateLabel()
    }
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
}
