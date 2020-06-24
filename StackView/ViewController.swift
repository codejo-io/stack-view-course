//
//  ViewController.swift
//  StackView
//
//  Created by Matt Casanova on 6/22/20.
//  Copyright © 2020 Codejo.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    static let colors = [
        UIColor.black,
        UIColor.blue,
        UIColor.purple,
        UIColor.green,
        UIColor.red,
        UIColor.darkGray
    ]
    
    static let text = [
        "Something",
        "Text",
        "Matt",
        "Awesome",
        "What???"
    ]
    
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onAddClicked(_ sender: UIButton) {
        let button = UIButton(frame: sender.frame)
        button.backgroundColor = ViewController.colors.randomElement()
        button.setTitle(ViewController.text.randomElement(), for: .normal)
        
        stackView.addArrangedSubview(button)
    }
    
    @IBAction func onRemoveClicked(_ sender: Any) {
        if stackView.arrangedSubviews.count == 0 {
            return
        }
        
        let view = stackView.arrangedSubviews[stackView.arrangedSubviews.count - 1]
        view.removeFromSuperview()
    }
}

