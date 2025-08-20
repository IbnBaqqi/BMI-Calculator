//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Abdulbaki Salaudeen on 1.8.2025.
//  Copyright © 2025 Abdulbaki Salaudeen. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    mutating func calaculateBMI(height : Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0, green: 0.4588235294, blue: 0.8901960784, alpha: 1))
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        let bmiValue = String (format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    
    func getAdvice() -> String {
        return bmi!.advice
    }
    
    func getColor() -> UIColor {
        return bmi!.color
    }
}
