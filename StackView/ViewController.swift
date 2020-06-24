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
    @IBOutlet weak var spacingSlider: UISlider!
    @IBOutlet weak var spacingLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onSpacingChanged(spacingSlider)
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
    
    @IBAction func onOrientationClicked(_ sender: Any) {
        stackView.axis = (stackView.axis == .horizontal) ? .vertical : .horizontal
    }
    
    @IBAction func onSpacingChanged(_ sender: UISlider) {
        let newSpacing = CGFloat(sender.value)
        
        spacingLabel.text = String.init(format: "%.0f", newSpacing)
        stackView.spacing = newSpacing
    }
    
}

