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

    var timer: Timer!
    var audioPlayer = AVAudioPlayer()
    var IsOk: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "passaro_acordar", ofType: "mp3")!)) // colocando a música através do diretório
            audioPlayer.prepareToPlay() // preparando o áudio
        } catch {
            print(error) // erro de áudio
        }
        
        // Do any additional setup after loading the view, typically from a nib.
        Cena1ImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena1Gif = UIImage.gifImageWithName("Cena_1") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena1
        Cena1ImageView.image = Cena1Gif // Adicionando a variável à tela de ImageView
      
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Cena1ViewController.update), userInfo: nil, repeats: true)

    }
    
    
    @objc func update() { // Função de atualização para opreações constantes
        if IsOk == false{ // Variável que faz vibrar apenas uma vez
            audioPlayer.play() // dá o play no áudio
           // for _ in 1...5 { // Repetição da quantidade de vibrações
             //   AudioServicesPlaySystemSound(kSystemSoundID_Vibrate) // Comando de vibrar
              //  sleep(1) // delay do comando
            IsOk = true
            showOutgoingMessage(text: cena1[0])
            //}
        } else{
            
        }
   
    }
    
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        self.animatedLabel()
//    }
    
//    func animatedLabel(){
//        DialogoLabelCenaUm.text = ""
//        let labelDialog = (Bundle.main.infoDictionary?["CFBoundleName"] as? String) ?? cena1[0]
//
//        for letra in labelDialog {
//            DialogoLabelCenaUm.text! += ("\(letra)")
//            RunLoop.current.run(until: Date()+0.10)
//        }
//
//    }
    
    func showOutgoingMessage(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .black
        label.text = ""
        
        let constraintRect = CGSize(width: 0.66 * view.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesLineFragmentOrigin,
                                            attributes: [.font: label.font],
                                            context: nil)
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))
        
        let bubbleImageSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 20)
        
        let outgoingMessageView = UIImageView(frame:
            CGRect(x: view.frame.width - bubbleImageSize.width - 10, // posição x
                y: view.frame.height - bubbleImageSize.height - 550, //posição y
                width: bubbleImageSize.width,
                height: bubbleImageSize.height))
        
        let bubbleImage = UIImage(named: "cidio")?
            .resizableImage(withCapInsets: UIEdgeInsets(top: 17, left: 21, bottom: 17, right: 21),
                            resizingMode: .tile)
            .withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
        outgoingMessageView.image = bubbleImage
        
        view.addSubview(outgoingMessageView)
        
        label.center = outgoingMessageView.center
        
        let labelDialog = (Bundle.main.infoDictionary?["CFBoundleName"] as? String) ?? cena1[0]
        
        for letra in labelDialog {
            label.text! += ("\(letra)")
            RunLoop.current.run(until: Date()+0.10)
            view.addSubview(label)
        }
    }
    
}
