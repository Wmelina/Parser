//
//  ViewController.swift
//  KeepOnFalling
//
//  Created by Admin on 30.09.17.
//  Copyright © 2017 NB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let asd : SearchForBracket = SearchForBracket()
        print(asd.getValidString(stringForParse: "{asdasd}([)"))
        print(asd.getValidString(stringForParse: "{}[][{()}]HEL[LO]"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

