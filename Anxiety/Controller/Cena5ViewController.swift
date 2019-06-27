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
    
    @IBOutlet weak var dialogLabelCena5: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        // Do any additional setup after loading the view, typically from a nib.
        
        dialogLabelCena5.numberOfLines = 0
        dialogLabelCena5.font = UIFont(name: "Juninhorepacked-Regular", size: 28)
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
        if fimDefrase == true {
            dialogLabelCena5.text?.removeAll()
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
        } else{
            initialView = false
            performSegue(withIdentifier: "Segue5", sender: nil)
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
//            CGRect(x: view.frame.width - bubbleImageSize.width - 210, // posição x
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
//                y: view.frame.height - bubbleImageSize.height - 300, //posição y
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
//    func showOutgoingMessage3(text: String) {
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
////    func showOutgoingMessage4(text: String) {
////        let label =  UILabel()
////        label.numberOfLines = 0
////        label.font = UIFont.systemFont(ofSize: 18)
////        label.textColor = .black
////        label.text = ""
////
////        let constraintRect = CGSize(width: 0.66 * view.frame.width,
////                                    height: .greatestFiniteMagnitude)
////        let boundingBox = text.boundingRect(with: constraintRect,
////                                            options: .usesLineFragmentOrigin,
////                                            attributes: [.font: label.font],
////                                            context: nil)
////        label.frame.size = CGSize(width: ceil(boundingBox.width),
////                                  height: ceil(boundingBox.height))
////
////        let bubbleImageSize = CGSize(width: label.frame.width + 28,
////                                     height: label.frame.height + 20)
////
////        let outgoingMessageView = UIImageView(frame:
////            CGRect(x: view.frame.width - bubbleImageSize.width - 10,// posição x
////                y: view.frame.height - bubbleImageSize.height - 550, //posição y
////                width: bubbleImageSize.width,
////                height: bubbleImageSize.height))
////
////        let bubbleImage = UIImage(named: "bubble_Chat")?
////            .resizableImage(withCapInsets: UIEdgeInsets(top: 17, left: 21, bottom: 17, right: 21),
////                            resizingMode: .tile)
////            .withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
////
////        outgoingMessageView.image = bubbleImage
////
////        view.addSubview(outgoingMessageView)
////
////        label.center = outgoingMessageView.center
////
////        let labelDialog = (Bundle.main.infoDictionary?["CFBoundleName"] as? String) ?? text
////
////        for letra in labelDialog {
////            label.text! += ("\(letra)")
////            RunLoop.current.run(until: Date()+0.10)
////            view.addSubview(label)
////        }
////    }
//
    
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
