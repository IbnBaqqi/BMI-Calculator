//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Abdulbaki Salaudeen on 1.8.2025.
//  Copyright © 2025 Abdulbaki Salaudeen. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi : Float?
    
    mutating func calaculateBMI(height : Float, weight: Float) {
        bmi = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String {
        let bmiValue = String (format: "%.1f", bmi ?? 0.0)
        return bmiValue
    }
}
