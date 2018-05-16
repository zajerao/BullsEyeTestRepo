//
//  ViewController.swift
//  BullsEye
//
//  Created by iMac on 20/04/2018.
//  Copyright © 2018 Zajerao. All rights reserved.
//



import UIKit

class ViewController: UIViewController {
    
    
    var currentValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderMoved(_ slider: UISlider) {
        print ("The value of the slider is now: \(slider.value)")
        currentValue = lroundf(slider.value)
    }
    
    @IBAction func showAlert() {
        
        let miMensaje = "The value of the slider is: \(currentValue)"

        let alert = UIAlertController (title: "What a drag!", message: miMensaje, preferredStyle: .alert)
        
        let action = UIAlertAction (title: "Keep dragging", style: .default, handler: nil)
        
            alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    //TODO Knock-Knock
    /**********************************************************/
    @IBAction func knockKnock() {
        
        let miMensaje = "Keeps on knocking"
        
        let alert = UIAlertController (title: "Who's there?", message: miMensaje, preferredStyle: .alert)
        
        let action = UIAlertAction (title: "Go away!", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    
    
}



