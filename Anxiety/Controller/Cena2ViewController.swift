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
    
    @IBOutlet weak var Cena2ImageView: UIImageView!
    
    @IBOutlet weak var dialoLabelCena2: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dialoLabelCena2.numberOfLines = 0
        dialoLabelCena2.font = UIFont(name: "Juninho-Regular", size: 18)
        dialoLabelCena2.numberOfLines = 2
        dialoLabelCena2.textColor = .black
        dialoLabelCena2.textAlignment = .center
        dialoLabelCena2.lineBreakMode = .byTruncatingHead
        
        Cena2ImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena2Gif = UIImage.gifImageWithName("Cena_2") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena2
        Cena2ImageView.image = Cena2Gif // Adicionando a variável à tela de ImageView
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Cena2ViewController.update), userInfo: nil, repeats: true)
        
    }
    
    
    @objc func update() { // Função de atualização para opreações constantes
        if IsOk < cena1.count { // Variável que faz vibrar apenas uma vez
            sleep(1)
            if validAnimation == true {
                setLabelDialog()
            }
            //}
        } else{
            performSegue(withIdentifier: "Segue2", sender: nil)
        }
        
    }
    
    
    @IBAction func ContDialog(_ sender: Any) {
        if fimDefrase == true {
            dialoLabelCena2.text?.removeAll()
            IsOk += 1
            validAnimation = true
            fimDefrase = false
        }
    }
    
//    func showOutgoingMessage(text: String) {
//        let label =  UILabel()
//        label.numberOfLines = 0
//        label.font = UIFont(name: "Juninho-Regular", size: 18)
//        label.textColor = .black
//        label.text = ""
//
//        let constraintRect = CGSize(width: 0.66 * view.frame.width,
//                                    height: .greatestFiniteMagnitude)
//        let boundingBox = text.boundingRect(with: constraintRect,
//                                            options: .usesLineFragmentOrigin,
//                                            attributes: [.font: label.font],
//                                            context: nil)
//        label.frame.size = CGSize(width: ceil(boundingBox.width),
//                                  height: ceil(boundingBox.height))
//
//        let bubbleImageSize = CGSize(width: label.frame.width + 28,
//                                     height: label.frame.height + 20)
//
//        let outgoingMessageView = UIImageView(frame:
//            CGRect(x: view.frame.width - bubbleImageSize.width - 10, // posição x
//                y: view.frame.height - bubbleImageSize.height - 550, //posição y
//                width: bubbleImageSize.width,
//                height: bubbleImageSize.height))
//
//        let bubbleImage = UIImage(named: "bubble_Chat")?
//            .resizableImage(withCapInsets: UIEdgeInsets(top: 17, left: 21, bottom: 17, right: 21),
//                            resizingMode: .tile)
//            .withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
//
//        outgoingMessageView.image = bubbleImage
//
//        view.addSubview(outgoingMessageView)
//
//        label.center = outgoingMessageView.center
//
//        let labelDialog = (Bundle.main.infoDictionary?["CFBoundleName"] as? String) ?? text
//
//        for letra in labelDialog {
//            label.text! += ("\(letra)")
//            RunLoop.current.run(until: Date()+0.10)
//            view.addSubview(label)
//        }
//    }
//
//    override var prefersStatusBarHidden: Bool{
//        return true
//    }
    
    
    func setLabelDialog(){
        for letra in cena1[IsOk] {
            dialoLabelCena2.text! += ("\(letra)")
            RunLoop.current.run(until: Date()+0.10)
        }
        fimDefrase = true
        validAnimation = false
    }
    
}

