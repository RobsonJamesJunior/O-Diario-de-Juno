//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena14ViewController: UIViewController {
    
    @IBOutlet weak var Cena14ImageView: UIImageView!
    var labelEnd: Bool = false
    var initialView: Bool = false
    var countNextMusic = 0
    var timer: Timer!
    var firstTouch: Bool = false
    
    @IBOutlet weak var imageSong: UIImageView!
    
    
    @IBOutlet weak var nextOut: UIButton!
    
    
    @IBOutlet weak var backOut: UIButton!
    
    
    @IBOutlet weak var playOut: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        firstTouch = true
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(Cena14ViewController.update), userInfo: nil, repeats: true)
        
    }
    
    
    @objc func update() { // Função de atualização para opreações constantes
        if firstTouch {
            let pulse1 = Pulsing(numberOfPulses: 1, radius: 80, position: nextOut.center)
            pulse1.animationDuration = 1.0
            //  pulse1.backgroundColor = UIColor.blue.cgColor
            pulse1.backgroundColor = #colorLiteral(red: 0.6981794238, green: 0.8099042773, blue: 0.9306624532, alpha: 1)
            self.view.layer.insertSublayer(pulse1, below: nextOut.layer)
            
            let pulse2 = Pulsing(numberOfPulses: 1, radius: 80, position: backOut.center)
            pulse2.animationDuration = 1.0
            //     pulse2.backgroundColor = UIColor.blue.cgColor
            pulse2.backgroundColor = #colorLiteral(red: 0.6981794238, green: 0.8099042773, blue: 0.9306624532, alpha: 1)
            self.view.layer.insertSublayer(pulse2, below: backOut.layer)
            
            let pulse3 = Pulsing(numberOfPulses: 1, radius: 80, position: playOut.center)
            pulse3.animationDuration = 1.0
            //    pulse3.backgroundColor = UIColor.green.cgColor
            pulse3.backgroundColor = #colorLiteral(red: 0.9811585546, green: 0.7588065267, blue: 0.8108978868, alpha: 1)
            self.view.layer.insertSublayer(pulse3, below: playOut.layer)
        }
    }
    
    
    
    @IBAction func next(_ sender: Any) {
        firstTouch = false
        if countNextMusic >= 0 && countNextMusic < 5 {
            countNextMusic += 1
        }
        print("next \(countNextMusic)" )
        if countNextMusic == 1{
            MusicHelper.sharedHelper.playBackgroundMusic(nome: "ms2", type: "wav")
            imageSong.image = UIImage(named: "Scream2")
            print("a" )
        }else if countNextMusic == 2{
            MusicHelper.sharedHelper.playBackgroundMusic(nome: "ms3", type: "wav")
            imageSong.image = UIImage(named: "Scream3")
            print("b" )
        }else if countNextMusic == 3{
            MusicHelper.sharedHelper.playBackgroundMusic(nome: "ms4", type: "wav")
            print("c" )
            imageSong.image = UIImage(named: "Scream2")
        }else if countNextMusic == 4{
            imageSong.image = UIImage(named: "Scream3")
            MusicHelper.sharedHelper.playBackgroundMusic(nome: "ms1", type: "wav")
            countNextMusic = 0
            print("d" )
        } else if countNextMusic > 4{
            countNextMusic = 0
        }
        
    }
    
    @IBAction func back(_ sender: Any) {
        firstTouch = false
        if countNextMusic > 0 && countNextMusic <= 5 {
            countNextMusic -= 1
        }
        print("back \(countNextMusic)" )
        if countNextMusic == 0{
            countNextMusic = 5
        }
        else if countNextMusic == 1{
            MusicHelper.sharedHelper.playBackgroundMusic(nome: "ms2", type: "wav")
            imageSong.image = UIImage(named: "Scream2")
            print("1" )
        }else if countNextMusic == 2{
            MusicHelper.sharedHelper.playBackgroundMusic(nome: "ms3", type: "wav")
            imageSong.image = UIImage(named: "Scream3")
            print("2" )
        }else if countNextMusic == 3{
            print("3" )
            MusicHelper.sharedHelper.playBackgroundMusic(nome: "ms4", type: "wav")
            imageSong.image = UIImage(named: "Scream2")
        }else if countNextMusic == 4{
            print("4" )
            MusicHelper.sharedHelper.playBackgroundMusic(nome: "ms1", type: "wav")
            imageSong.image = UIImage(named: "Scream3")
            print("oie")
        }
    }
    
    
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
