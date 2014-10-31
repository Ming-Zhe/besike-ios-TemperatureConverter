//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Ming-Zhe on 14/10/27.
//  Copyright (c) 2014年 Ming-Zhe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider!
    
    @IBAction func temperatureSliderChanged(sender: UISlider) {
        // TODO: read the current value of the slider and update the temperature displays
        self.updateTemperatureDisplays()
    }
    
    func updateTemperatureDisplays() {
        celsiusLabel.text = NSString(format: "%.2f", temperatureSlider.value) + "C"
        fahrenheitLabel.text = NSString(format: "%.2f", temperatureSlider.value * 9 / 5 + 32) + "F"
        kelvinLabel.text = NSString(format: "%.2f", temperatureSlider.value + 273.15) + "K"
    }
    
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        let screen = UIScreen.mainScreen()
//        // Always return the size of the screen in portraits orientation
//        println("screen fixed bounds: \(screen.fixedCoordinateSpace.bounds)")
//        // Since ios8, this is the size of the screen in its current orientation
//        println("screen bounds: \(screen.bounds)")
//        
//        println("top layout guide: \(topLayoutGuide.length)")
//        titleLabel.frame.height = 21
//        titleLabel.frame.width = screen.bounds - 40

//        titleLabel.frame = CGRect(x: 20,y: 20,width: screen.bounds.width - 40,height: 21)
//        titleLabel.backgroundColor = UIColor.lightGrayColor()
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

