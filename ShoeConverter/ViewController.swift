//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Yung Dai on 2015-01-29.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let sizeFromTextField = mensShoeSizeTextField.text
        // convert sizeFromTextField into an integer
        let numberFromTextField = sizeFromTextField.toInt()
        
        var integerFromTextField = numberFromTextField!
        let conversionConstant = 30
        // remember that this is the same as saying integerFromTextField = integerFromTextField + conversionConstant
        integerFromTextField += conversionConstant
        
        // unhide the label
        mensConvertedShoeSizeLabel.hidden = false
        
        // "\(variable)" is string interpolation
        let stringWithUpdatedShoeSize = "\(integerFromTextField)"
        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
    }

}

