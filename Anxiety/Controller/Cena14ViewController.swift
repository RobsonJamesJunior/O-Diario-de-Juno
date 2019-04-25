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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView = true
        // Do any additional setup after loading the view, typically from a nib.
        Cena14ImageView.isAccessibilityElement = true
        let Cena14Gif = UIImage.gifImageWithName("Cena_14") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena6
        Cena14ImageView.image = Cena14Gif // Adicionando a variável à tela de ImageView
    }
    
    @IBAction func next(_ sender: Any) {
         countNextMusic += 1
        
        if countNextMusic == 1{
            MusicHelper.sharedHelper.playBackgroundMusic(nome: "ms2", type: "wav")
            
        }else if countNextMusic == 2{
            MusicHelper.sharedHelper.playBackgroundMusic(nome: "ms3", type: "wav")
            
        }else if countNextMusic == 3{
            
            MusicHelper.sharedHelper.playBackgroundMusic(nome: "ms4", type: "wav")
        }else if countNextMusic == 4{
            
            MusicHelper.sharedHelper.playBackgroundMusic(nome: "ms1", type: "wav")
            countNextMusic = 0
        }
        
        
        
    }
    
    @IBAction func back(_ sender: Any) {
        
        countNextMusic -= 1
        
        if countNextMusic == 1{
            MusicHelper.sharedHelper.playBackgroundMusic(nome: "ms2", type: "wav")
            countNextMusic = 4
            
        }else if countNextMusic == 2{
            MusicHelper.sharedHelper.playBackgroundMusic(nome: "ms3", type: "wav")
            
        }else if countNextMusic == 3{
            
            MusicHelper.sharedHelper.playBackgroundMusic(nome: "ms4", type: "wav")
        }else if countNextMusic == 4{
            
            MusicHelper.sharedHelper.playBackgroundMusic(nome: "ms1", type: "wav")
        }
    }
    
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
