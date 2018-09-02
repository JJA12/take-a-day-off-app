//
//  SecondViewController.swift
//  jieeop8
//
//  Created by CMoney on 2018/9/2.
//  Copyright © 2018年 CMoney. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var yourQuestion: UITextField!
    @IBOutlet weak var robotAnswer: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        func touchesBegan(_touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
        }
    }
    
    @IBAction func sendButton(_ sender: Any) {
        
        let question = yourQuestion.text!
        
        if question.contains("海"){
            robotAnswer.image = UIImage(named: "sea")}
            
        else if question.contains("山"){
            robotAnswer.image = UIImage(named: "m")
        }
        else if question.contains("電影"){
            robotAnswer.image = UIImage(named: "movie")
        }
        else{
            robotAnswer.image = UIImage(named: "book")
        }
    }
    
        
        
        
        
        

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}

