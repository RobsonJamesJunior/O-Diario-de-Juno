//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit
import AudioToolbox // Biblioteca para utilizar vibração
import AVFoundation // Biblioteca para utilizar sons

class Cena1ViewController: UIViewController {
    
    @IBOutlet weak var Cena1ImageView: UIImageView!
    
    
    @IBOutlet weak var stopButtonOut: UIButton!
    

    @IBOutlet weak var sinecaButton: UIButton!
    
    
    @IBOutlet weak var alarmCell: UIImageView!
    
    weak var timer: Timer!
    var audioPlayer = AVAudioPlayer()
    var IsOk: Bool = false
    var initialView: Bool = false
    var teste = 0
    
    @IBAction func ButtonStopVibration(_ sender: Any) {
        IsOk = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        IsOk = false
        stopButtonOut.isHidden = false
        alarmCell.shake(duration: 2.0)

        self.sinecaButton.isEnabled = false
        
        // Do any additional setup after loading the view, typically from a nib.
        Cena1ImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena1Gif = UIImage.gifImageWithName("Cena_1") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena1
        Cena1ImageView.image = Cena1Gif // Adicionando a variável à tela de ImageView
      
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(Cena1ViewController.update), userInfo: nil, repeats: true)

    }
    
    
    @objc func update() { // Função de atualização para opreações constantes

        
        if IsOk == false {
            for _ in 1...5 { // Repetição da quantidade de vibrações
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate) // Comando de vibrar
            }
         
        } else {
//            self.dismiss(animated: false, completion: {})
//            self.removeFromParent()
            self.timer.invalidate()
        }
        
    }

    
    @IBAction func sonecar(_ sender: Any) {
        //Features
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if IsOk == false {
            UIView.animate(withDuration: 1, animations: {self.alarmCell.frame.origin.y -= 310})
            
            UIView.animate(withDuration: 1, animations: {self.stopButtonOut.frame.origin.y -= 210})
            
            UIView.animate(withDuration: 1, animations: {self.sinecaButton.frame.origin.y -= 210})
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
                //            self.stopButtonOut.isHidden = false
                self.alarmCell.shake(duration: 2.0)
                self.stopButtonOut.shake(duration: 2.0)
                self.sinecaButton.shake(duration: 2.0)
            }
        }
    }
    
    
    @IBAction func backMenu(_ sender: Any) {
        initialView = false
        performSegue(withIdentifier: "BackMenu", sender: nil)
        IsOk = true
        self.dismiss(animated: false, completion: {})
    }
    

    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("1 - Dispose of any resources that can be recreated")
    }
    
    deinit {
        print("Cena1 View Controller was de-initialized - \(self) - \(Date())")
    }
    
}
