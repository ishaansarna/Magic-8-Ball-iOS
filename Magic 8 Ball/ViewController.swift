//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var askButton: UIButton!
    @IBOutlet weak var diceImage: UIImageView!
    let ballArray = [#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball3"),#imageLiteral(resourceName: "ball5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var randomInt = Int.random(in: 0...4)
    var prevRandomInt = -1
    @IBAction func askClick(_ sender: Any) {
        randomInt = Int.random(in: 0...4)
        while randomInt == prevRandomInt {
            print ("x")
            randomInt = Int.random(in: 0..<5)
        }
        diceImage.image = ballArray[randomInt]
        prevRandomInt = randomInt
    }
    
}

