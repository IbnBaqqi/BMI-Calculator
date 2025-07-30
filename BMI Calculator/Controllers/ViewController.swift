

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var HeightLabel: UIStackView!
    @IBOutlet weak var WeightLabel: UILabel!
    
    @IBAction func HeightSliderChange(_ sender: UISlider) {
        print(String(format: "%.2f", sender.value))
    }
    
    @IBAction func WeightSliderChange(_ sender: UISlider) {
        print(Int (sender.value))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

