//
//  ViewController.swift
//  uiPickerView 01
//
//  Created by D7703_24 on 2018. 4. 19..
//  Copyright © 2018년 D7703_24. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet weak var UILabel: UILabel!
    @IBOutlet weak var myPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    myPickerView.delegate = self
    myPickerView.dataSource = self
    }
    //UIPickerViewdataSource method
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 10
        } else {
            return 50
    }
}
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int,forComponent component: Int) -> String? {
        
        if component == 0 {
            return "1st component \(row)"
        } else {
            return "2st component \(row)"
        }
    }
 
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        UILabel.text = "comp = \(component) row = \(row)"
    }
}

