//
//  ViewController.swift
//  pickerwithMutilpleTextfields
//
//  Created by admin on 15/05/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var thirdTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var firstTextField: UITextField!
    var names = ["Jemima", "Peter", "David", "Kelly", "Isabella", "Adam"]
    var names1 = ["Abbie", "Billy", "korea", "South America", "VIetnam", "venezuala"]
    var names2 = ["INDIA", "PAKISTAN", "JAPAN"]
    var textFieldName:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.samplePicker .removeFromSuperview()
        firstTextField.inputView = samplePicker
        secondTextField.inputView = samplePicker
        thirdTextField.inputView = samplePicker
    }
    @IBOutlet weak var samplePicker: UIPickerView!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK:- picker view methods
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool
    {
        
        
        
        print("textfield is ..\(textField)")
        
        if textField.placeholder == "first name"
        {
            textFieldName = "firstDoseFld"
            samplePicker .reloadAllComponents()
        }
        else if textField.placeholder == "second name"
        {
            textFieldName = "frequencyFld"
            samplePicker.reloadAllComponents()
        }
        
        else if textField.placeholder == "third anem"
        {
            textFieldName = "thirdld"
            samplePicker.reloadAllComponents()
        }
      //  activeTextfield = textField
        
       // print(selectedTextField)
        return true;
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if (textFieldName .isEqual("firstDoseFld")) {
            return names.count
            
        }
        else if (textFieldName .isEqual("frequencyFld"))
        {
            return names1.count
        }
        else if (textFieldName .isEqual("thirdld"))
        {
            return names2.count
        }
        
        return 10
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if (textFieldName .isEqual("firstDoseFld")) {
            return names[row]
        } else if (textFieldName .isEqual("frequencyFld")) {
            return names1[row]
        }
        
        else if (textFieldName .isEqual("thirdld")) {
            return names2[row]
        }
        
        
        return names2[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if (textFieldName .isEqual("firstDoseFld"))
        {
//            selectedFirstDose = NSString()
//            selectedFirstDose = arrFirstDose[row] as NSString!
            firstTextField.text = names[row]
            
            
         //   names.text = selectedFirstDose as String?
            
        } else if(textFieldName .isEqual("frequencyFld"))
        {
//            selectedFrequency = NSString()
//            selectedFrequency = arrFrequency[row] as NSString!
//          
//            
//            names1.text = selectedFrequency as String?
            
            secondTextField.text = names1[row]

        }
        
        else if(textFieldName .isEqual("thirdld"))
        {
            //            selectedFrequency = NSString()
            //            selectedFrequency = arrFrequency[row] as NSString!
            //
            //
            //            names1.text = selectedFrequency as String?
            
            thirdTextField.text = names2[row]
            
        }
    }

}

