//
//  ViewController.swift
//  Mini Contest 2
//
//  Created by MisterNay on 7/18/2560 BE.
//  Copyright © 2560 MisterNay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputN: UITextField!
    
    @IBOutlet weak var inputText: UITextField!
    
    @IBOutlet weak var answerB: UIButton!
    
    @IBOutlet weak var answerBox: UILabel!
    
    @IBAction func buttonOk(_ sender: Any) {
        
        if inputText.text?.isEmpty == false {
            
            var textA: String!
            textA = inputText.text
            var values = [Character]()
            for (_ , element) in textA.characters.enumerated() {
                values.append(element)
            }
            var _ = checkChar(values)

        }}
    
    func checkChar(_ values: [Character]) -> Bool {
        var checkAns = 1
        if values.count > 1 {
            let endValue = values.count-1
            for i in 0...endValue {
                if i != endValue{
                    if values[i] == values[i+1] {
                        answerBox.text = "Wrong Answer!"
                        checkAns = 0
                        break
                    }else{
                        answerBox.text = "Correct Answer!"
                    }
                }else{
                    if values[i] == values[i-1] {
                        answerBox.text = "Wrong Answer!"
                        checkAns = 0
                        break
                    }else{
                        answerBox.text = "Correct Answer!"
                    }
                }
            }
        }
        if checkAns == 0 {
            return true
        }else{
            return false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

