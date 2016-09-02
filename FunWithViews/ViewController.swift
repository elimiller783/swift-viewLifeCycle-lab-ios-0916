//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Dot1: UIView!
    @IBOutlet weak var Dot2: UIView!
    @IBOutlet weak var Dot3: UIView!
    @IBOutlet weak var Dot4: UIView!
    @IBOutlet weak var Dot5: UIView!
    @IBOutlet weak var Dot6: UIView!
    @IBOutlet weak var Dot7: UIView!
    @IBOutlet weak var try1: UILabel!
    @IBOutlet weak var try2: UILabel!
    @IBOutlet weak var try3: UILabel!
    @IBOutlet weak var try4: UILabel!
    @IBOutlet weak var try5: UILabel!
    @IBOutlet weak var try6: UILabel!

    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

    var count = 0
    override func viewDidLoad() {
         super.viewDidLoad()
        Dot1.hidden = true
        Dot2.hidden = true
        Dot3.hidden = true
        Dot4.hidden = true
        Dot5.hidden = true
        Dot6.hidden = true
        Dot7.hidden = true
        try1.hidden = true
        try2.hidden = true
        try3.hidden = true
        try4.hidden = true
        try5.hidden = true
        try6.hidden = true

       
     }

    //function to hide views and labels
    func hideView() {
        Dot1.hidden = true
        Dot2.hidden = true
        Dot3.hidden = true
        Dot4.hidden = true
        Dot5.hidden = true
        Dot6.hidden = true
        Dot7.hidden = true
    }
    func hideLabels() {
        try1.hidden = true
        try2.hidden = true
        try3.hidden = true
        try4.hidden = true
        try5.hidden = true
        try6.hidden = true
    }
   
    
    func changeDots(num :Int) {
        switch num {
            case 1:
           hideView()
           Dot1.hidden = false
            case 2:
           hideView()
           Dot2.hidden = false
           Dot7.hidden = false
            case 3:
           hideView()
           Dot1.hidden = false
           Dot2.hidden = false
           Dot7.hidden = false
            case 4:
           hideView()
           Dot2.hidden = false
           Dot4.hidden = false
           Dot5.hidden = false
           Dot7.hidden = false
            case 5:
           hideView()
           Dot2.hidden = false
           Dot1.hidden = false
           Dot4.hidden = false
           Dot5.hidden = false
           Dot7.hidden = false
            case 6:
           hideView()
           
           Dot2.hidden = false
           Dot3.hidden = false
           Dot4.hidden = false
           Dot5.hidden = false
           Dot6.hidden = false
           Dot7.hidden = false
        default:
           count = 1
        }
}
    
    func fillLabels(counts: Int, value: Int) {
        switch counts {
            case 1:
                try1.hidden = false
                try1.text = "\(value)"
            case 2:
                try2.hidden = false
                try2.text = "\(value)"
            case 3:
                try3.hidden = false
                try3.text = "\(value)"
            case 4:
                try4.hidden = false
                try4.text = "\(value)"
            case 5:
                try5.hidden = false
                try5.text = "\(value)"
            case 6:
                try6.hidden = false
                try6.text = "\(value)"
            default:
                hideLabels()
                try1.text = "\(value)"
                count = 1
            
        }
    }
    
    
    @IBAction func dice(sender: AnyObject) {
        
        let num :Int = randomDiceRoll()
            fillLabels(count, value: num)
            changeDots(num)
            count += 1
        
    }

}
    





