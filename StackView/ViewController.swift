//
//  ViewController.swift
//  StackView
//
//  Created by Matt Casanova on 6/22/20.
//  Copyright © 2020 Codejo.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onAddClicked(_ sender: UIButton) {
        let button = UIButton(frame: sender.frame)
        button.backgroundColor = UIColor.purple
        button.setTitle("Text", for: .normal)
        
        stackView.addArrangedSubview(button)
    }
    
}

