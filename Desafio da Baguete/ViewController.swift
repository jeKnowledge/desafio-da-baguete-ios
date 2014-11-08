//
//  ViewController.swift
//  Desafio da Baguete
//
//  Created by João Bernardo on 08/11/14.
//  Copyright (c) 2014 jeKnowledge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var typeTextLabel: UILabel!    
    @IBOutlet var ingredientsTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func acceptChallangeButtonPressed(sender: UIButton) {
        //Create random baguete
        var randomBaguete: Baguete = Baguete()
        randomBaguete.generateBaguete()
        
        //Display random baguete ingridents
        var length = randomBaguete.extras.count
        var ingredientsToDisplay: String = ""
        for i in 0...(length-1) {
            ingredientsToDisplay = ingredientsToDisplay + " " + randomBaguete.extras[i]
        }
        
        typeTextLabel.text = randomBaguete.type
        ingredientsTextLabel.text = ingredientsToDisplay
    }

}
 