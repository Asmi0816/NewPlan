//
//  ViewController.swift
//  NewPlan
//
//  Created by Smith, Arick on 9/26/16.
//  Copyright © 2016 Smith, Arick. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var appScreen: UIView!
    @IBOutlet weak var buttonEffect: UIButton!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClick(sender: UIButton) ->Void
        
    {
       buttonEffect.backgroundColor = makeRandomColor()
       appScreen.backgroundColor = makeRandomColor()
    }
    private func makeRandomColor() -> UIColor
    {
        let randomColor : UIColor
        //Color in Swift is a precentag - 0 - 1 inclusive.
        //Of type CGFloat for allcomponents : RGBA
        let redColor : CGFloat = CGFloat(drand48())
        //  Red%
        let greenColor : CGFloat = CGFloat (Double(arc4random_uniform(256))/(255.00))
        // Green%
        let blueColor : CGFloat = CGFloat (drand48())
        //  Blue%
        let alphaChannel : CGFloat = 1.0
        // A%
        randomColor = UIColor (red: redColor, green: greenColor, blue: blueColor, alpha: alphaChannel)
        return randomColor
    }

}

