//
//  ViewController.swift
//  jieeop8
//
//  Created by CMoney on 2018/9/2.
//  Copyright © 2018年 CMoney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearSliderController: UISlider!
    @IBOutlet weak var relaxSegmented: UISegmentedControl!
    @IBOutlet weak var breakSegmented: UISegmentedControl!
    @IBOutlet weak var whySegmented: UISegmentedControl!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var answerImage: UIImageView!
    @IBOutlet weak var nextPageButton: UIButton!
    var numValue:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func giveTheAns(_ sender: Any) {
        if whySegmented.selectedSegmentIndex == 0
        {
            answerImage.image = UIImage(named: "Group 4")
            nextPageButton.isHidden = true
        } else {
            answerImage.image = UIImage(named: "Group 3")
            nextPageButton.isHidden = false
            
        }
    }
    
    @IBAction func yearSlider(_ sender: Any) {
        yearLabel.text = String(Int(yearSliderController.value))
    }
    
    
}

