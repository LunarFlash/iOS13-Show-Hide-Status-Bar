//
//  ViewController.swift
//  Test
//
//  Created by Yi Wang on 9/25/19.
//  Copyright © 2019 Yi Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    @IBAction func pressedButton(_ sender: Any) {
        prefersHidden = !prefersHidden
        if prefersHidden {
            button.setTitle("Show", for: .normal)
        } else {
            button.setTitle("Hide", for: .normal)
        }
        UIView.animate(withDuration: 0.5) {
            self.setNeedsStatusBarAppearanceUpdate()
        }
    }
    
    var prefersHidden: Bool = false
    
    override var prefersStatusBarHidden: Bool {
        return prefersHidden
    }
    
    override func setNeedsStatusBarAppearanceUpdate() {
        super.setNeedsStatusBarAppearanceUpdate()
    }

}

