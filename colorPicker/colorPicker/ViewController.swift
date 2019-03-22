//
//  ViewController.swift
//  colorPicker
//
//  Created by Ryan Glascock on 3/22/19.
//  Copyright © 2019 Ryan Glascock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let dataSource = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //detailLabel.text = dataSource[row]
        
        if (row == 5)
        {
            self.view.backgroundColor = UIColor.purple
        }
        else if(row == 1)
        {
            self.view.backgroundColor = UIColor.orange
        }
        else if (row == 2)
        {
            self.view.backgroundColor = UIColor.yellow
        }
        else if (row == 3)
        {
            self.view.backgroundColor = UIColor.green
        }
        else if (row == 4)
        {
            self.view.backgroundColor = UIColor.blue
        }
        else
        {
            self.view.backgroundColor = UIColor.red
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
}
