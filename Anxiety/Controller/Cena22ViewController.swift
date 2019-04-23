
import UIKit

class Cena22ViewController: UIViewController {
    
    
    @IBOutlet weak var Cena22ImageView: UIImageView!
    var labelEnd: Bool = false
    var initialView: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
         initialView = true
        // Do any additional setup after loading the view, typically from a nib.
         Cena22ImageView.isAccessibilityElement = true
        let Cena22Gif = UIImage.gifImageWithName("Cena_22") // Cria uma variável com a imagem Gif através da extensão da biblioteca ImageView que será utilizada na ImageView da Cena
        Cena22ImageView.image = Cena22Gif // Adicionando a variável à tela de ImageView
        //MusicHelper.sharedHelper.audioPlayer?.pause()
        Coracao1.sharedHelper.playBackgroundMusic()
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
}
