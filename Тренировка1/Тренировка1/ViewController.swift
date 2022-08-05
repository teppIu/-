//
//  ViewController.swift
//  Тренировка1
//
//  Created by Stefan Iurin on 30.07.2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var dataLabel: UILabel!
    @IBOutlet var monthLabel: UILabel!
    @IBOutlet var yearLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    

    @IBAction func findDay() {
        let calendar = Calendar.current
        var dataComponents = DateComponents()
        dataComponents.day = Int(dataLabel.text!)
        dataComponents.month = Int(monthLabel.text!)
        dataComponents.year = Int(yearLabel.text!)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        let date = calendar.date(from: dataComponents)
        
        let weekday = dateFormatter.string(from: date!)
        resultLabel.text = weekday
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

