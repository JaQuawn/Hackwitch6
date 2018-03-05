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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sliderHasMoved(_ sender: Any) {
        print("The value of the slider is:\(Slider.value)")
        currentValue = lroundf(Slider.value)
    }
    
    @IBAction func MyGuessButtonPressed(_ sender: Any) {
    
        let message = " The value is: \(currentValue)"
        let alert = UIAlertController(title:"Hello World!", message: message, preferredStyle: . alert)
        let action = UIAlertAction(title: " Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    
    }
    
    
  
    
   
}

