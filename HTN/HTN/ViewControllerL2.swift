//
//  ViewControllerL2.swift
//  HTN
//
//  Created by Meghan Arora on 2016-09-17.
//  Copyright © 2016 Meghan Arora. All rights reserved.
//

import Foundation
import UIKit



class ViewControllerL2: UIViewController {
    
    class Option{
        let price: Int
        let time: Float
        let index: Int
        
        init(price: Int, time: Float, index: Int) {
            self.price = price
            self.time = time
            self.index = index
        }
    }
    
    let buyFood = Option(price: 20, time:0.5, index:0)
    let cookFood = Option(price: 10, time: 2, index: 0)
    
    let taxi = Option(price: 30, time: 0.5, index: 1)
    let bus = Option(price: 10, time: 2, index: 1)
    
    
    class Selected {
        
        //initialize differently
        var options = [Option]()
        //add new selection
        func add(a: Option) {
            let length = options.count
            print("Cool")
            var i = 0
            while i < length {
            
                if options[i].index == a.index {
                    options.remove(at: i)
                    break
                }
                i+=1
            }
            options.append(a)
            print("Added succesfully!")
        }
        
        
        func Price() -> Int {
            var total = 0
            let length = options.count - 1
            for i in 0...length {
                total += options[i].price
            }
            return total
        }
        
        // Need to be able to get Total Time
        func Time() -> Int {
            var total = 0
            let length = options.count - 1
            for i in 0...length {
           //     total += options[i].time
            }
            return total
        }
        // Need to be able to get Total Satisfaction
    }
    
    var s = Selected();
    
    
    @IBOutlet weak var Controller: UISegmentedControl!
    
    @IBOutlet weak var Controller2: UISegmentedControl!
    
    @IBOutlet weak var Label: UITextField!
    
    @IBAction func Change(_ sender: AnyObject) {
        
        if Controller.selectedSegmentIndex == 0 {
            s.add(a: buyFood)
        }
        
        if Controller.selectedSegmentIndex == 1 {
            s.add(a: cookFood)
        }
        Label.text = "$" + String(s.Price())
        if s.Price() == 20 {
            //Some sort of end level
            print("Win")
        }
    }
    
    @IBAction func Change2(_ sender: AnyObject) {
        if Controller2.selectedSegmentIndex == 0 {
            s.add(a: taxi)
        }
        
        if Controller2.selectedSegmentIndex == 1 {
            s.add(a: bus)
        }
        Label.text = "$" + String(s.Price())
        
        if s.Price() == 20 {
            //Some sort of end level
            print("Win")
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

