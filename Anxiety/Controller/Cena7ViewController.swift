//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class Cena7ViewController: UIViewController {
    

    @IBOutlet weak var Cena7ImageView: UIImageView!
   
    var timer: Timer!
    var IsOk: Int = 0
    var labelEnd: Bool = false
    var initialView: Bool = false
    
    var podePassar: Bool = false
    
    var movendo = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        // Do any additional setup after loading the view, typically from a nib.
        Cena7ImageView.isAccessibilityElement = true

        
        let Cena7Image = UIImage.gifImageWithName("Cena_7")
        
        Cena7ImageView.image = Cena7Image // Adicionando a variável à tela de ImageView
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(Cena7ViewController.update), userInfo: nil, repeats: true)
        
    }
    
   
   
    
    @objc func update() { // Função de atualização para opreações constantes
        
        if movendo == false {
            //shakeOvo()
        }
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
//                dicasLoad()
                podePassar = true
//                performSegue(withIdentifier: "next", sender: nil)
            }
            IsOk += 1
        } else{
            initialView = false
            
        }
        
    }
    
    // MARK: 1
    func showOutgoingMessage1(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "IndieFlower", size: 18)
        label.textColor = .black
        label.text = ""
        
        let constraintRect = CGSize(width: 0.66 * view.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesFontLeading,
                                            attributes: [.font: label.font as Any],
                                            context: nil)
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))
        
        let bubbleImageSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 35)
        
        let outgoingMessageView = UIImageView(frame:
            CGRect(x: view.frame.width - bubbleImageSize.width - 10, // posição x
                y: view.frame.height - bubbleImageSize.height - 570, //posição y
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
            if labelEnd == true {
                break
            }
            label.text! += ("\(letra)")
            RunLoop.current.run(until: Date()+0.10)
            self.view.addSubview(label)
        }
        if labelEnd == true {
            label.text = labelDialog
            self.view.addSubview(label)
            labelEnd = false
        }
    }
    
    // MARK: 2
    func showOutgoingMessage2(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "IndieFlower", size: 18)
        label.textColor = .black
        label.text = ""
        
        let constraintRect = CGSize(width: 0.66 * view.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesFontLeading,
                                            attributes: [.font: label.font!],
                                            context: nil)
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))
        
        let bubbleImageSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 35)
        
        let outgoingMessageView = UIImageView(frame:
            CGRect(x: view.frame.width - bubbleImageSize.width - 10,// posição x
                y: view.frame.height - bubbleImageSize.height - 490, //posição y
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
            if labelEnd == true {
                break
            }
            label.text! += ("\(letra)")
            RunLoop.current.run(until: Date()+0.10)
            self.view.addSubview(label)
        }
        if labelEnd == true {
            label.text = labelDialog
            self.view.addSubview(label)
            labelEnd = false
        }
    }
    
    // MARK: 3
    func showOutgoingMessage3(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "IndieFlower", size: 18)
        label.textColor = .black
        label.text = ""
        
        let constraintRect = CGSize(width: 0.66 * view.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesFontLeading,
                                            attributes: [.font: label.font as Any],
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
            if labelEnd == true {
                break
            }
            label.text! += ("\(letra)")
            RunLoop.current.run(until: Date()+0.10)
            self.view.addSubview(label)
        }
        if labelEnd == true {
            label.text = labelDialog
            self.view.addSubview(label)
            labelEnd = false
        }
    }
    
    // MARK: 4
    func showOutgoingMessage4(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "IndieFlower", size: 18)
        label.textColor = .black
        label.text = ""
        
        let constraintRect = CGSize(width: 0.66 * view.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesFontLeading,
                                            attributes: [.font: label.font as Any],
                                            context: nil)
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))
        
        let bubbleImageSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 20)
        
        let outgoingMessageView = UIImageView(frame:
            CGRect(x: view.frame.width - bubbleImageSize.width - 10,// posição x
                y: view.frame.height - bubbleImageSize.height - 340, //posição y
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
            if labelEnd == true {
                break
            }
            label.text! += ("\(letra)")
            RunLoop.current.run(until: Date()+0.10)
            self.view.addSubview(label)
        }
        if labelEnd == true {
            label.text = labelDialog
            self.view.addSubview(label)
            labelEnd = false
        }
    }
    
    // MARK: 5
    func showOutgoingMessage5(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "IndieFlower", size: 18)
        label.textColor = .black
        label.text = ""
        
        let constraintRect = CGSize(width: 0.66 * view.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesFontLeading,
                                            attributes: [.font: label.font as Any],
                                            context: nil)
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))
        
        let bubbleImageSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 20)
        
        let outgoingMessageView = UIImageView(frame:
            CGRect(x: view.frame.width - bubbleImageSize.width - 10,// posição x
                y: view.frame.height - bubbleImageSize.height - 270, //posição y
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
            if labelEnd == true {
                break
            }
            label.text! += ("\(letra)")
            RunLoop.current.run(until: Date()+0.10)
            self.view.addSubview(label)
        }
        if labelEnd == true {
            label.text = labelDialog
            self.view.addSubview(label)
            labelEnd = false
        }
    }
    
    // MARK: 6
    func showOutgoingMessage6(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "IndieFlower", size: 18)
        label.textColor = .black
        label.text = ""
        
        let constraintRect = CGSize(width: 0.66 * view.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesFontLeading,
                                            attributes: [.font: label.font as Any],
                                            context: nil)
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))
        
        let bubbleImageSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 20)
        
        let outgoingMessageView = UIImageView(frame:
            CGRect(x: view.frame.width - bubbleImageSize.width - 245 ,// posição x
                y: view.frame.height - bubbleImageSize.height - 570, //posição y
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
            if labelEnd == true {
                break
            }
            label.text! += ("\(letra)")
            RunLoop.current.run(until: Date()+0.10)
            self.view.addSubview(label)
        }
        if labelEnd == true {
            label.text = labelDialog
            self.view.addSubview(label)
            labelEnd = false
        }
    }
    
    // MARK: 7
    func showOutgoingMessage7(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "IndieFlower", size: 18)
        label.textColor = .black
        label.text = ""
        
        let constraintRect = CGSize(width: 0.66 * view.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesFontLeading,
                                            attributes: [.font: label.font as Any],
                                            context: nil)
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))
        
        let bubbleImageSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 35)
        
        let outgoingMessageView = UIImageView(frame:
            CGRect(x: view.frame.width - bubbleImageSize.width - 245 ,// posição x
                y: view.frame.height - bubbleImageSize.height - 490, //posição y
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
            if labelEnd == true {
                break
            }
            label.text! += ("\(letra)")
            RunLoop.current.run(until: Date()+0.10)
            self.view.addSubview(label)
        }
        if labelEnd == true {
            label.text = labelDialog
            self.view.addSubview(label)
            labelEnd = false
        }
    }
    
    // MARK: 8
    func showOutgoingMessage8(text: String) {
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "IndieFlower", size: 18)
        label.textColor = .black
        label.text = ""
        
        let constraintRect = CGSize(width: 0.66 * view.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesFontLeading,
                                            attributes: [.font: label.font as Any],
                                            context: nil)
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))
        
        let bubbleImageSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 35)
        
        let outgoingMessageView = UIImageView(frame:
            CGRect(x: view.frame.width - bubbleImageSize.width - 245 ,// posição x
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
            if labelEnd == true {
                break
            }
            label.text! += ("\(letra)")
            RunLoop.current.run(until: Date()+0.10)
            self.view.addSubview(label)
        }
        if labelEnd == true {
            label.text = labelDialog
            self.view.addSubview(label)
            labelEnd = false
        }
    }
    
    // MARK: 9
    func showOutgoingMessage9(text: String) {
        
        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "IndieFlower", size: 18)
        label.textColor = .black
        label.text = ""
        

        
        let constraintRect = CGSize(width: 0.66 * view.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesFontLeading,
                                            attributes: [.font: label.font as Any],
                                            context: nil)
        
        
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))
        
        
        
        let bubbleImageSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 20)
        
        let outgoingMessageView = UIImageView(frame:
            CGRect(x: view.frame.width - bubbleImageSize.width - 225 ,// posição x
                y: view.frame.height - bubbleImageSize.height - 340, //posição y
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
            if labelEnd == true {
                break
            }
            label.text! += ("\(letra)")
            RunLoop.current.run(until: Date()+0.10)
            self.view.addSubview(label)
        }
        if labelEnd == true {
            label.text = labelDialog
            self.view.addSubview(label)
            labelEnd = false
        }
    }
    
    // MARK: 10
    func showOutgoingMessage10(text: String) {
        let device = UIDevice.modelName

        let label =  UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "IndieFlower", size: 18)
        label.textColor = .black
        label.text = ""

        let constraintRect = CGSize(width: 0.66 * view.frame.width,
                                    height: .greatestFiniteMagnitude)
        let boundingBox = text.boundingRect(with: constraintRect,
                                            options: .usesFontLeading,
                                            attributes: [.font: label.font as Any],
                                            context: nil)
        label.frame.size = CGSize(width: ceil(boundingBox.width),
                                  height: ceil(boundingBox.height))

        let bubbleImageSize = CGSize(width: label.frame.width + 28,
                                     height: label.frame.height + 35)

        if ((device == "iPhone 7")||(device == "Simulator iPhone 7")) {
            let outgoingMessageView = UIImageView(frame:
                CGRect(x: view.frame.width - bubbleImageSize.width - 230,// posição x
                    y: view.frame.height - bubbleImageSize.height - 270, //posição y
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
//            print(device)
            let outgoingMessageView = UIImageView(frame:
                CGRect(x: view.frame.width - bubbleImageSize.width - 320 ,// posição x
                    y: view.frame.height - bubbleImageSize.height - 395, //posição y
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
                    if labelEnd == true {
                        break
                    }
                    label.text! += ("\(letra)")
                    RunLoop.current.run(until: Date()+0.10)
                    self.view.addSubview(label)
            }
            if labelEnd == true {
               label.text = labelDialog
               self.view.addSubview(label)
                labelEnd = false
            }
            
        }
    }
    
    
    @IBAction func passDialog(_ sender: Any) {
        
        if podePassar == true {
           performSegue(withIdentifier: "next", sender: nil)
            self.timer.invalidate()
        } else {
            labelEnd = true
        }
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("7 - Dispose of any resources that can be recreated")
    }
    
    deinit {
        print("Cena7 View Controller was de-initialized - \(self) - \(Date())")
    }
    
}
