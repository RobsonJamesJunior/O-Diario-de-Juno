//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena19ViewController: UIViewController {
 
    @IBOutlet weak var Cena19ImageView: UIImageView!
    var timer: Timer!
    var IsOk: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Cena19ImageView.isAccessibilityElement = true
        let Cena19Gif = UIImage.gifImageWithName("Cena_19") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
        Cena19ImageView.image = Cena19Gif // Adicionando a variável à tela de ImageView
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Cena19ViewController.update), userInfo: nil, repeats: true)
        
    }
    
    
    @objc func update() { // Função de atualização para opreações constantes
        if IsOk < cena19.count { // Variável que faz vibrar apenas uma vez
            switch IsOk {
            case 0:
                showOutgoingMessage1(text: cena19[IsOk])
            case 1:
                showOutgoingMessage2(text: cena19[IsOk])
            case 2:
                showOutgoingMessage3(text: cena19[IsOk])
            default:
                showOutgoingMessage4(text: cena19[IsOk])
            }
            IsOk += 1
        } else{
            
        }
        
    }
    
    func showOutgoingMessage1(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Juninho-Regular", size: 18)
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
            CGRect(x: view.frame.width - bubbleImageSize.width - 10,// posição x
                y: view.frame.height - bubbleImageSize.height - 550, //posição y
                width: bubbleImageSize.width,
                height: bubbleImageSize.height))
        
        let bubbleImage = UIImage(named: "bubble_Chat2")?
            .resizableImage(withCapInsets: UIEdgeInsets(top: 17, left: 21, bottom: 17, right: 21),
                            resizingMode: .tile)
            .withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
        outgoingMessageView.image = bubbleImage
        
        view.addSubview(outgoingMessageView)
        
        label.center = outgoingMessageView.center
        
        let labelDialog = (Bundle.main.infoDictionary?["CFBoundleName"] as? String) ?? text
        
        for letra in labelDialog {
            label.text! += ("\(letra)")
            RunLoop.current.run(until: Date()+0.10)
            view.addSubview(label)
        }
    }
    
    func showOutgoingMessage2(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Juninho-Regular", size: 18)
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
            CGRect(x: view.frame.width - bubbleImageSize.width - 10,// posição x
                y: view.frame.height - bubbleImageSize.height - 450, //posição y
                width: bubbleImageSize.width,
                height: bubbleImageSize.height))
        
        let bubbleImage = UIImage(named: "bubble_Chat2")?
            .resizableImage(withCapInsets: UIEdgeInsets(top: 17, left: 21, bottom: 17, right: 21),
                            resizingMode: .tile)
            .withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
        outgoingMessageView.image = bubbleImage
        
        view.addSubview(outgoingMessageView)
        
        label.center = outgoingMessageView.center
        
        let labelDialog = (Bundle.main.infoDictionary?["CFBoundleName"] as? String) ?? text
        
        for letra in labelDialog {
            label.text! += ("\(letra)")
            RunLoop.current.run(until: Date()+0.10)
            view.addSubview(label)
        }
    }
    
    func showOutgoingMessage3(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Juninho-Regular", size: 18)
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
            CGRect(x: view.frame.width - bubbleImageSize.width - 10,// posição x
                y: view.frame.height - bubbleImageSize.height - 350, //posição y
                width: bubbleImageSize.width,
                height: bubbleImageSize.height))
        
        let bubbleImage = UIImage(named: "bubble_Chat2")?
            .resizableImage(withCapInsets: UIEdgeInsets(top: 17, left: 21, bottom: 17, right: 21),
                            resizingMode: .tile)
            .withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
        outgoingMessageView.image = bubbleImage
        
        view.addSubview(outgoingMessageView)
        
        label.center = outgoingMessageView.center
        
        let labelDialog = (Bundle.main.infoDictionary?["CFBoundleName"] as? String) ?? text
        
        for letra in labelDialog {
            label.text! += ("\(letra)")
            RunLoop.current.run(until: Date()+0.10)
            view.addSubview(label)
        }
    }
    
    func showOutgoingMessage4(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Juninho-Regular", size: 18)
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
            CGRect(x: view.frame.width - bubbleImageSize.width - 10,// posição x
                y: view.frame.height - bubbleImageSize.height - 550, //posição y
                width: bubbleImageSize.width,
                height: bubbleImageSize.height))
        
        let bubbleImage = UIImage(named: "bubble_Chat2")?
            .resizableImage(withCapInsets: UIEdgeInsets(top: 17, left: 21, bottom: 17, right: 21),
                            resizingMode: .tile)
            .withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
        outgoingMessageView.image = bubbleImage
        
        view.addSubview(outgoingMessageView)
        
        label.center = outgoingMessageView.center
        
        let labelDialog = (Bundle.main.infoDictionary?["CFBoundleName"] as? String) ?? text
        
        for letra in labelDialog {
            label.text! += ("\(letra)")
            RunLoop.current.run(until: Date()+0.10)
            view.addSubview(label)
        }
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
