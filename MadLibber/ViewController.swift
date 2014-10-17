//
//  ViewController.swift
//  MadLibber
//
//  Created by Brian Ledbetter on 10/16/14.
//  Copyright (c) 2014 Brian Ledbetter. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
/*
extension Array {
        func randomItem() -> T {
            let index = Int(arc4random_uniform(UInt32(self.count)))
            return self.index
    }
*/
    var noun:String = "Money"
    var verb:String = "Verb"
    var emoji:String = "Emoji"
    var nounArray:[String] = ["Jim", "Bob", "Andy", "Alice", "Candy"]
    var verbArray:[String] = ["sings", "dances", "programs", "eats"]
    var emojiArray:[String] = ["happy", "good", "pumped", "rad"]
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
    
    @IBAction func nounSwitch(){
        println("calling randomIndexer")
        noun = nounArray[randomIndexer(nounArray)]
        updateLabels()
    }

    
    func randomIndexer(parameterArray: [String]) -> Int{
        let randomIndex:Int = Int(arc4random_uniform(UInt32(parameterArray.count)))
        println(randomIndex)
        return randomIndex
    }
    
    
    // unimportant
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

