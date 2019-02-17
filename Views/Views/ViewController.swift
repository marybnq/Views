//
//  ViewController.swift
//  Views
//
//  Created by Federica Benacquista on 17/02/2019.
//  Copyright © 2019 Federica. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelView1: UILabel!
    
    @IBOutlet weak var labelView2: UILabel!
    
    @IBOutlet weak var labelView3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func button1(_ sender: Any) {
        labelView1.text = "Hi!"
        labelView1.textColor = .purple
    }
    
    @IBAction func button2(_ sender: Any) {
        labelView2.text = "Hi!"
        labelView2.textColor = .green
    }
    
    @IBAction func button3(_ sender: Any) {
        labelView3.text = "Hi!"
        labelView3.textColor = .red
    }
    
    @IBAction func handlePan(recognizer:UIPanGestureRecognizer) {
        let translation = recognizer.translation(in: self.view)
        if let view = recognizer.view {
            view.center = CGPoint(x:view.center.x + translation.x,
                                  y:view.center.y + translation.y)
        }
        recognizer.setTranslation(CGPoint.zero, in: self.view)
    }
    @IBAction func handlePinch(recognizer : UIPinchGestureRecognizer) {
        if let view = recognizer.view {
            view.transform = view.transform.scaledBy(x: recognizer.scale, y: recognizer.scale)
            recognizer.scale = 1
        }
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
    
}

extension ViewController: UIGestureRecognizerDelegate {
    
}
