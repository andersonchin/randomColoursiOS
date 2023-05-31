//
//  ColoursDetailVC.swift
//  RandomColours2
//
//  Created by Anderson Chin on 24/5/2023.
//

import UIKit

class ColoursDetailVC: UIViewController {
    
    var colour: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = colour ?? .systemBackground
        // Do any additional setup after loading the view.
    }

}
