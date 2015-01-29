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
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!

    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
//        let sizeFromTextField = mensShoeSizeTextField.text
//        // convert sizeFromTextField into an integer
//        let numberFromTextField = sizeFromTextField.toInt()
//        
//        var integerFromTextField = numberFromTextField!
//        

// refactored the code above into one line of code.
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        
// refactored the cdoe to make it more concise
        let conversionConstant = 30
        // this code makes the mensConvertedShoeSizeLabel visible
        mensConvertedShoeSizeLabel.hidden = false
        // this code line of code below puts the text into the label
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant) " + "in European Shoe Size"

//        integerFromTextField += conversionConstant
//        mensConvertedShoeSizeLabel.hidden = false
//        let stringWithUpdatedShoeSize = "\(integerFromTextField)"
//        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
    }
    
    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant) " + "in European Shoe Size"
        
    }

    
    

}

