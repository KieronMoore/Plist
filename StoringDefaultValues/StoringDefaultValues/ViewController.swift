//
//  ViewController.swift
//  StoringDefaultValues
//
//  Created by Kieon Moore on 8/10/20.
//  Copyright © 2020 Kieon Moore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func saveB(_ sender: Any) {
        UserDefaults.standard.set(myText.text, forKey: "Text")
          UserDefaults.standard.set(mySwitch.isOn, forKey: "Switch")
          UserDefaults.standard.set(mySlider.value, forKey: "Slider")
    }
  
    @IBAction func loadB(_ sender: Any) {
        mySwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        mySlider.value = UserDefaults.standard.float(forKey: "Slider")
        myText.text = UserDefaults.standard.string(forKey: "Text")
    }
    
    
    @IBAction func deleteB(_ sender: Any) {
        mySwitch.isOn = true
        mySlider.value = 0.5
        myText.text = ""
    }
    
    @IBOutlet var mySlider: UISlider!
    
    @IBOutlet var mySwitch: UISwitch!
    
    @IBOutlet var myText: UITextField!
}

