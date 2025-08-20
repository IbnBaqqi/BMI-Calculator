

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var HeightLabel: UILabel!
    @IBOutlet weak var WeightLabel: UILabel!
    
    @IBOutlet weak var HeightSlider: UISlider!
    @IBOutlet weak var WeightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
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
        
        calculatorBrain.calaculateBMI(height: height, weight: weight)

        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

