//
//  ViewController.swift
//  Hackwitch6
//
//  Created by CM Student on 3/5/18.
//  Copyright © 2018 CM student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Slider: UISlider!
    var currentValue: Int = 0
    var targetValue: Int = 0
    @IBOutlet weak var targetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(Slider.value)
       startNewRound()
        
    }
    
    
    func updatetargetLabel(){
        targetLabel.text = String(targetValue)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func sliderHasMoved(_ sender: Any) {
        print("The value of the slider is:\(Slider.value)")
        currentValue = lroundf(Slider.value)
    }
    
    @IBAction func MyGuessButtonPressed(_ sender: Any) {
        let message = " The value is: \(currentValue)" + "\nThe target value is : \(targetValue)"
        let alert = UIAlertController(title:"Hello World!", message: message, preferredStyle: . alert)
        let action = UIAlertAction(title: " Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }
    
    
    func startNewRound() {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        Slider.value = Float(currentValue)
        updatetargetLabel()
        
    }
    
   
}

