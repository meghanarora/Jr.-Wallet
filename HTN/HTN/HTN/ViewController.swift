//
//  ViewController.swift
//  HTN
//
//  Created by Meghan Arora on 2016-09-17.
//  Copyright © 2016 Meghan Arora. All rights reserved.
//

import UIKit


    
class ViewController: UIViewController {
    
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
    let cookFood = Option(price: 10, time: 2.0, index: 0)
    
    let taxi = Option(price: 30, time: 0.5, index: 1)
    let bus = Option(price: 10, time: 2.0, index: 1)
    
    
    class Selected {
        //initialize differently
        var options = [Option]()
        //add new selection
        func add(a: Option) {
            let length = options.count
            print("Cool")
            var i = 0
            while i < length {
              //  if i + 1 >= length {
               //     break
                //}
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
        func Time() -> Float {
            var total: Float = 0
            let length = options.count - 1
            for i in 0...length {
                total += options[i].time
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
          if s.Price() == 20 && s.options.count == 2{
            //Some sort of end level
      
          //  Button.isEnabled = true
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
        
        if s.Price() == 20 && s.options.count == 2 {            //Some sort of end level
        
            Button.isEnabled = true
            
             print("Win")
            
        }
    }
    
    
    @IBOutlet weak var Button: UIButton!
    
    
  //  @IBAction func NewLevel(_ sender: AnyObject!) {
    //    print("Yay")
    //    let storyBoard : UIStoryboard = UIStoryboard(name: "L2", bundle:nil)
        
     //   let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("ViewControllerL2") as NextViewController
      //  self.presentViewController(nextViewController, animated:true, completion:nil)
    //}
 
    
    @IBOutlet weak var Controller1: UISegmentedControl!
    
    @IBOutlet weak var Controller12: UISegmentedControl!
    
    @IBOutlet weak var Label1: UITextField!
    
    @IBOutlet weak var Label2: UITextField!
    
    @IBAction func Change21(_ sender: AnyObject) {
        
        if Controller1.selectedSegmentIndex == 0 {
            s.add(a: buyFood)
        }
        
        if Controller1.selectedSegmentIndex == 1 {
            s.add(a: cookFood)
        }
        Label1.text = "$" + String(s.Price())
        Label2.text = String(s.Time()) + " hours"
        if s.Price() == 40 {
            //Some sort of end level
            print("Win")
        }
    }
    
    @IBAction func Change22(_ sender: AnyObject) {
        if Controller12.selectedSegmentIndex == 0 {
            s.add(a: taxi)
        }
        
        if Controller12.selectedSegmentIndex == 1 {
            s.add(a: bus)
        }
        Label1.text = "$" + String(s.Price())
        Label2.text = String(s.Time()) + " hours"
        
        if s.Price() == 40 {
            //Some sort of end level
            print("Win")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
     //  Button.isEnabled = false
      
      }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}







