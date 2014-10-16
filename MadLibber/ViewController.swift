//
//  ViewController.swift
//  MadLibber
//
//  Created by Brian Ledbetter on 10/16/14.
//  Copyright (c) 2014 Brian Ledbetter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var noun:String = "Money"
    var verb:String = "Verb"
    var emoji:String = "Emoji"
    var madlib:String = "When X Yd, he felt Z"
    @IBOutlet weak var nounLabel: UILabel!
    @IBOutlet weak var verbLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateLabels()
    }

    func updateLabels(){
        nounLabel.text = String(noun)
        verbLabel.text = String(verb)
        emojiLabel.text = String(emoji)
    }
    
    
    
    
    
    // unimportant
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

