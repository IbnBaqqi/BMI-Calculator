

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var HeightLabel: UILabel!
    @IBOutlet weak var WeightLabel: UILabel!
    
    @IBOutlet weak var HeightSlider: UISlider!
    @IBOutlet weak var WeightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func HeightSliderChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        HeightLabel.text = "\(height)m"
    }
    
    @IBAction func WeightSliderChange(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        WeightLabel.text = "\(weight)kg"
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = HeightSlider.value
        let weight = WeightSlider.value
        
        let bmi = weight / pow(height, 2)
        print(bmi)
    }
    
}

