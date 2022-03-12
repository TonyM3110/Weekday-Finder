//
//  ViewController.swift
//  Weekday Finder
//
//  Created by Tony on 12.03.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var DateTextField: UITextField!
    @IBOutlet weak var MonthTextField: UITextField!
    @IBOutlet weak var YearTextField: UITextField!
    @IBOutlet weak var resultLable: UILabel!
    
    @IBAction func findDay(_ sender: UIButton) {
        
        guard let day = DateTextField.text, let month = MonthTextField.text, let year = YearTextField.text else { return }
        
        let calendar = Calendar.current
        var dateComponets = DateComponents()
        dateComponets.day = Int(day)
        dateComponets.month = Int(month)
        dateComponets.year = Int(year)
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        dateFormatter.dateFormat = "EEEE"
        guard let date = calendar.date(from: dateComponets) else { return }
        let weekDay = dateFormatter.string(from: date)
        let capitalisedWeekDay = weekDay.capitalized
        resultLable.text = capitalisedWeekDay
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

