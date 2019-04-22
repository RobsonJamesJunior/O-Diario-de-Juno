//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena7ViewController: UIViewController {
    
    @IBOutlet weak var DicasLabel: UILabel!
    @IBOutlet weak var Cena7ImageView: UIImageView!
    
    
    var timer: Timer!
    var IsOk: Int = 0
    var labelEnd: Bool = false
    var initialView: Bool = false
    
    func dicasLoad(){
        DicasLabel.text = dicaCenaCafe[0]
        DicasLabel.center.x += view.bounds.height
        UIView.animate(withDuration: 1.0, animations:{
            self.DicasLabel.center.x -= self.view.bounds.height
        })
    }
    
//    override func viewWillAppear(_ animated:Bool) {
//        super.viewWillAppear(animated)
//        DicasLabel.center.x += view.bounds.height
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        //animeted label
//        UIView.animate(withDuration: 1.0, animations:{
//            self.DicasLabel.center.x -= self.view.bounds.height
//        })
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        // Do any additional setup after loading the view, typically from a nib.
        Cena7ImageView.isAccessibilityElement = true // Comando que transforma a ImageView em um objeto visível pelo crossover
        let Cena7Gif = UIImage.gifImageWithName("Cena_7") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena7
        Cena7ImageView.image = Cena7Gif // Adicionando a variável à tela de ImageView
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Cena7ViewController.update), userInfo: nil, repeats: true)
        
    }
    
    
    @objc func update() { // Função de atualização para opreações constantes
        if IsOk < cena6.count { // Variável que faz vibrar apenas uma vez
            switch IsOk {
            case 0:
                showOutgoingMessage1(text: cena6[IsOk])
            case 1:
                showOutgoingMessage2(text: cena6[IsOk])
            case 2:
                showOutgoingMessage3(text: cena6[IsOk])
            case 3:
                showOutgoingMessage4(text: cena6[IsOk])
            case 4:
                showOutgoingMessage5(text: cena6[IsOk])
            case 5:
                showOutgoingMessage6(text: cena6[IsOk])
            case 6:
                showOutgoingMessage7(text: cena6[IsOk])
            case 7:
                showOutgoingMessage8(text: cena6[IsOk])
            case 8:
                showOutgoingMessage9(text: cena6[IsOk])
            default:
                showOutgoingMessage10(text: cena6[IsOk])
                dicasLoad()
            }
            IsOk += 1
        } else{
            initialView = false
            performSegue(withIdentifier: "Segue7", sender: nil)
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
                                            options: .usesFontLeading,
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
                                            options: .usesFontLeading,
                                            attributes: [.font: label.font],
                                            context: nil)
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))
        
        let bubbleImageSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 20)
        
        let outgoingMessageView = UIImageView(frame:
            CGRect(x: view.frame.width - bubbleImageSize.width - 10,// posição x
                y: view.frame.height - bubbleImageSize.height - 500, //posição y
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
                                            options: .usesFontLeading,
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
    
    func showOutgoingMessage4(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Juninho-Regular", size: 18)
        label.textColor = .black
        label.text = ""
        
        let constraintRect = CGSize(width: 0.66 * view.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesFontLeading,
                                            attributes: [.font: label.font],
                                            context: nil)
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))
        
        let bubbleImageSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 20)
        
        let outgoingMessageView = UIImageView(frame:
            CGRect(x: view.frame.width - bubbleImageSize.width - 10,// posição x
                y: view.frame.height - bubbleImageSize.height - 400, //posição y
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
    
    func showOutgoingMessage5(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Juninho-Regular", size: 18)
        label.textColor = .black
        label.text = ""
        
        let constraintRect = CGSize(width: 0.66 * view.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesFontLeading,
                                            attributes: [.font: label.font],
                                            context: nil)
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))
        
        let bubbleImageSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 20)
        
        let outgoingMessageView = UIImageView(frame:
            CGRect(x: view.frame.width - bubbleImageSize.width - 10,// posição x
                y: view.frame.height - bubbleImageSize.height - 250, //posição y
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
    
    func showOutgoingMessage6(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Juninho-Regular", size: 18)
        label.textColor = .black
        label.text = ""
        
        let constraintRect = CGSize(width: 0.66 * view.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesFontLeading,
                                            attributes: [.font: label.font],
                                            context: nil)
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))
        
        let bubbleImageSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 20)
        
        let outgoingMessageView = UIImageView(frame:
            CGRect(x: view.frame.width - bubbleImageSize.width - 245 ,// posição x
                y: view.frame.height - bubbleImageSize.height - 550, //posição y
                width: bubbleImageSize.width,
                height: bubbleImageSize.height))
        
        let bubbleImage = UIImage(named: "bubble_Chat")?
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
    
    func showOutgoingMessage7(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Juninho-Regular", size: 18)
        label.textColor = .black
        label.text = ""
        
        let constraintRect = CGSize(width: 0.66 * view.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesFontLeading,
                                            attributes: [.font: label.font],
                                            context: nil)
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))
        
        let bubbleImageSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 20)
        
        let outgoingMessageView = UIImageView(frame:
            CGRect(x: view.frame.width - bubbleImageSize.width - 245 ,// posição x
                y: view.frame.height - bubbleImageSize.height - 500, //posição y
                width: bubbleImageSize.width,
                height: bubbleImageSize.height))
        
        let bubbleImage = UIImage(named: "bubble_Chat")?
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
    
    func showOutgoingMessage8(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Juninho-Regular", size: 18)
        label.textColor = .black
        label.text = ""
        
        let constraintRect = CGSize(width: 0.66 * view.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesFontLeading,
                                            attributes: [.font: label.font],
                                            context: nil)
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))
        
        let bubbleImageSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 20)
        
        let outgoingMessageView = UIImageView(frame:
            CGRect(x: view.frame.width - bubbleImageSize.width - 245 ,// posição x
                y: view.frame.height - bubbleImageSize.height - 450, //posição y
                width: bubbleImageSize.width,
                height: bubbleImageSize.height))
        
        let bubbleImage = UIImage(named: "bubble_Chat")?
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
    
    func showOutgoingMessage9(text: String) {
        
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Juninho-Regular", size: 18)
        label.textColor = .black
        label.text = ""
        

        
        let constraintRect = CGSize(width: 0.66 * view.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesFontLeading,
                                            attributes: [.font: label.font],
                                            context: nil)
        
        
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))
        
        
        
        let bubbleImageSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 20)
        
        let outgoingMessageView = UIImageView(frame:
            CGRect(x: view.frame.width - bubbleImageSize.width - 225 ,// posição x
                y: view.frame.height - bubbleImageSize.height - 400, //posição y
                width: bubbleImageSize.width,
                height: bubbleImageSize.height))
        
        let bubbleImage = UIImage(named: "bubble_Chat")?
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
    
    func showOutgoingMessage10(text: String) {
        let device = UIDevice.modelName

        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Juninho-Regular", size: 18)
        label.textColor = .black
        label.text = ""

        let constraintRect = CGSize(width: 0.66 * view.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesFontLeading,
                                            attributes: [.font: label.font],
                                            context: nil)
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))

        let bubbleImageSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 20)

        if ((device == "iPhone 7")||(device == "Simulator iPhone 7")) {
            let outgoingMessageView = UIImageView(frame:
                CGRect(x: view.frame.width - bubbleImageSize.width - 230,// posição x
                    y: view.frame.height - bubbleImageSize.height - 350, //posição y
                    width: bubbleImageSize.width,
                    height: bubbleImageSize.height))

            let bubbleImage = UIImage(named: "bubble_Chat")?
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
        } else {
            print(device)
            let outgoingMessageView = UIImageView(frame:
                CGRect(x: view.frame.width - bubbleImageSize.width - 320 ,// posição x
                    y: view.frame.height - bubbleImageSize.height - 350, //posição y
                    width: bubbleImageSize.width,
                    height: bubbleImageSize.height))

            let bubbleImage = UIImage(named: "bubble_Chat")?
                    .resizableImage(withCapInsets: UIEdgeInsets(top: 17, left: 21, bottom: 17, right: 21),
                                resizingMode: .tile)
                    .withRenderingMode(UIImage.RenderingMode.alwaysOriginal)

            outgoingMessageView.image = bubbleImage

            self.view.addSubview(outgoingMessageView)

            label.center = outgoingMessageView.center

            let labelDialog = (Bundle.main.infoDictionary?["CFBoundleName"] as? String) ?? text

            for letra in labelDialog {
                    label.text! += ("\(letra)")
                    RunLoop.current.run(until: Date()+0.10)
                    self.view.addSubview(label)
            }
        }
    }
        
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
