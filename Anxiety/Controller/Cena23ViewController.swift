//
//  Cena23ViewController.swift
//  Anxiety
//
//  Created by Robson James Junior on 04/11/18.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import Foundation
import UIKit
import AudioToolbox // Biblioteca para utilizar vibração

class Cena23ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var Cena23ImageView: UIImageView!
    
    @IBOutlet weak var respImageView: UIImageView!
    
     @IBOutlet weak var progressBar: ProgressBarView!
    
    var labelEnd: Bool = false
    var inspBool: Bool = false
    var respBool: Bool = false
    var countAlc: Int = 0
    var timer: Timer!
    var portVib: Bool = false
    var initialView: Bool = false
    var feedbackGenerator: UINotificationFeedbackGenerator?
    var cronom = TimeInterval()
    
    @IBOutlet weak var feedbackLabel: UILabel!
    
    var longePressBeginTime: TimeInterval = 0.0
    
    // For Progress Bar
    var progressCounter:Float = 0
    let duration:Float = 6.0
    var progressIncrement:Float = 0
    var trueSemaf: Bool = false
    let imageRespira = UIImage(named: "respira")
    let imageInspira = UIImage(named: "Inspira")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MusicHelper.sharedHelper.audioPlayer?.play()
        feedbackLabel.isHidden = false
        feedbackLabel.text = "Pressione o botão e respire fundo por 2 segundos"
        feedbackLabel.font = UIFont(name: "IndieFlower", size: 28)
        respImageView.image = imageRespira
        feedbackGenerator = UINotificationFeedbackGenerator()
        countAlc = 0
        progressBar.progress = 0
        initialView = true
        labelEnd = true
        progressBar.layer.cornerRadius = progressBar.frame.height / 2
        progressIncrement = 2.0/duration
        progressCounter = progressCounter + progressIncrement
        Cena23ImageView.isAccessibilityElement = true
        
        let imagemInitial = UIImage.init(named: "respira")
        respImageView.image = imagemInitial
        
        respImageView.isUserInteractionEnabled = true
        
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(Cena23ViewController.addPulse))
        
        longPress.minimumPressDuration = 0.5
        longPress.delegate = self
        self.respImageView.addGestureRecognizer(longPress)
        
        let Cena23Gif = UIImage.gifImageWithName("Cena_23") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
        Cena23ImageView.image = Cena23Gif // Adicionando a variável à tela de ImageView
        
        timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(Cena23ViewController.update), userInfo: nil, repeats: true)
    }
    
    var countTimerCrom: Bool = false
   
    @objc func addPulse(longPress: UIGestureRecognizer){
       

        
        if (longPress.state == UIGestureRecognizer.State.ended)
        {
            countTimerCrom = false

            if ((NSDate.timeIntervalSinceReferenceDate - cronom) > 2){
                respImageView.image = imageInspira
                labelEnd = true
         
                progressBar.progress = progressCounter
                progressCounter = progressCounter + progressIncrement
                let Cena23_2Gif = UIImage.gifImageWithName("Cena_23_2")
                Cena23ImageView.image = Cena23_2Gif
                feedbackLabel.text = "Muito bem, faça novamente!"
            } else {
                self.feedbackGenerator?.notificationOccurred(.error)
                feedbackLabel.text = "Respire mais fundo"
                flashLabel()
                flash()
            }
        }
        else if (longPress.state == UIGestureRecognizer.State.began)
        {
            feedbackLabel.text = "0"
            countTimerCrom = true
            cronom = NSDate.timeIntervalSinceReferenceDate

            respImageView.image = imageRespira
            print("Began")
            labelEnd = false
            longePressBeginTime = NSDate.timeIntervalSinceReferenceDate
            let Cena23Gif = UIImage.gifImageWithName("Cena_23")
            Cena23ImageView.image = Cena23Gif

        }
        
    }
    
    @objc func update() { // Função de atualização para opreações constantes
        
        if initialView == true {
            if labelEnd == true {

                let pulse = Pulsing(numberOfPulses: 1, radius: 95, position: respImageView.center)
                pulse.animationDuration = 2.0
                pulse.backgroundColor = UIColor.blue.cgColor
                self.view.layer.insertSublayer(pulse, below: respImageView.layer)
                if(progressCounter > 1.0) {
                    initialView = false
                    
                    //MARK: Preparrrre Hereeee
                    
                    performSegue(withIdentifier: "segueTobeContinue2", sender: nil)
                    Coracao1.sharedHelper.audioPlayer?.stop()
                }
            } else {
                if countTimerCrom == true {
                    if ((NSDate.timeIntervalSinceReferenceDate - cronom) > 2) {
                        self.feedbackGenerator?.notificationOccurred(.success)
                        feedbackLabel.text = "Pode saltar o ar e inspirar"
                    } else {
                        feedbackLabel.text = "\(Int(Float(NSDate.timeIntervalSinceReferenceDate - cronom).rounded()))"
                    }
                } else {
                    
                }
            }
        }
    }
    
    
    func shake() {
        
        let center = respImageView.center
        
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: center.x - 5, y: center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x + 5, y: center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        respImageView.layer.add(shake, forKey: "position")
    }
    
    func flash() {
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 0.5
        flash.fromValue = 1
        flash.toValue = 0.1
        flash.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 3
        
        respImageView.layer.add(flash, forKey: nil)
    }
    
    func flashLabel() {
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 0.5
        flash.fromValue = 1
        flash.toValue = 0.1
        flash.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 3
        
        feedbackLabel.layer.add(flash, forKey: nil)
    }
    
    
    @IBAction func backToMenu(_ sender: Any) {
        Coracao1.sharedHelper.audioPlayer?.stop()
    }
    
    
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
}
