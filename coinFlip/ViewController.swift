//
//  ViewController.swift
//  coinFlip
//
//  Created by Saad Lulu on 2/18/15.
//  Copyright (c) 2015 Lulus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func flipCoinButton() {
        resultLabel.text = coinResult.headsOrTailsString()
    }

}

