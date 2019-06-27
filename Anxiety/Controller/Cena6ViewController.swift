//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena6ViewController: UIViewController {
    

    @IBOutlet weak var Cena6ImageView: UIImageView!
    @IBOutlet weak var dialogCena6Label: UILabel!
    
    var labelEnd: Bool = false
    var timer: Timer!
    var IsOk: Int = 0
    var validAnimation: Bool = true
    var fimDefrase: Bool =  false
    var initialView: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        // Do any additional setup after loading the view, typically from a nib.
        
        IsOk = 0
        dialogCena6Label.numberOfLines = 0
        dialogCena6Label.font = UIFont(name: "Juninhorepacked-Regular", size: 28)
        dialogCena6Label.numberOfLines = 2
        dialogCena6Label.textColor = .black
        dialogCena6Label.textAlignment = .center
        dialogCena6Label.lineBreakMode = .byTruncatingHead
        
        Cena6ImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
   //     let Cena6Gif = UIImage.gifImageWithURL("Cena_6")
        
        
        let imageCena6 = UIImage.init(named: "Cena_6")
        
  //      Cena6ImageView.image = Cena6Gif // Adicionando a variável à tela de ImageView
        
        Cena6ImageView.image = imageCena6
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Cena6ViewController.update), userInfo: nil, repeats: true)
        
    }
    
    
    @objc func update() { // Função de atualização para opreações constantes
        if initialView == true {
            if IsOk < cena5.count { // Variável que faz vibrar apenas uma vez
                // sleep(1)
                if validAnimation == true {
                    setLabelDialog()
                }
            } else{
                initialView = false
                performSegue(withIdentifier: "Segue6", sender: nil)
            }
        }
    }
    
    func setLabelDialog(){
        for letra in cena5[IsOk] {
            if validAnimation == false {
                dialogCena6Label.text! = cena5[IsOk]
                break
            }
            dialogCena6Label.text! += ("\(letra)")
            RunLoop.current.run(until: Date()+0.10)
        }
        fimDefrase = true
        validAnimation = false
    }
    
    
    @IBAction func setDialogCena6(_ sender: Any) {
        validAnimation = false
        if fimDefrase == true {
            dialogCena6Label.text?.removeAll()
            IsOk += 1
            validAnimation = true
            fimDefrase = false
        }
    }
    
    
//    func showOutgoingMessage1(text: String) {
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
//    func showOutgoingMessage2(text: String) {
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
//                y: view.frame.height - bubbleImageSize.height - 450, //posição y
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

    override var prefersStatusBarHidden: Bool{
        return true
    }
}
