
import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var labelCima: UILabel!
    @IBOutlet weak var labelBaixo: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: Actions
    @IBAction func iniciar(_ sender: UIButton) {
        DispatchQueue.global().async {
            for i in 10...20{
                DispatchQueue.main.async(execute: {self.labelCima.text = "\(i)"})
                Thread.sleep(forTimeInterval: 1.0)
            }
        }
        
        DispatchQueue.global().async {
            for i in 1...10{
                DispatchQueue.main.async(execute: {self.labelBaixo.text = "\(i)"})
                Thread.sleep(forTimeInterval: 1.0)
            }
        }
        
        
    }




}

