//
//  ViewController.swift
//  DemoApp
//
//  Created by Jawad Ali on 19/02/2020.
//  Copyright © 2020 Jawad Ali. All rights reserved.
//

import UIKit
import RingPieChart

class ViewController: UIViewController {
    
    @IBOutlet weak private var percentageSegment: UISegmentedControl!
    @IBOutlet weak private var animationSegment: UISegmentedControl!
    private var cir :Circular!
    
    override func viewDidAppear(_ animated: Bool) {
        addToView()
    }
    
    private func addToView() {
        if (cir != nil)  {
            cir.removeFromSuperview()
        }
        
        cir = Circular(percentages: [42,27,18,13], colors: [#colorLiteral(red: 0.2768642902, green: 0.552749753, blue: 0.9582422376, alpha: 1),#colorLiteral(red: 0.6800097227, green: 0.2969456911, blue: 0.8304955363, alpha: 1),#colorLiteral(red: 0.9592140317, green: 0.4973406196, blue: 0.08628573269, alpha: 1),#colorLiteral(red: 0.9573473334, green: 0.2803060114, blue: 0.4532059431, alpha: 1)])
        cir.animationType = AnimationStyle.init(rawValue: animationSegment.selectedSegmentIndex) ?? .animationFan
        cir.showPercentageStyle = PercentageStyle.init(rawValue: percentageSegment.selectedSegmentIndex) ?? .none
        cir.frame = CGRect(x: 50, y: 50, width: 300, height: 300)
        cir.lineWidth = 10
        cir.center = self.view.center
        
        self.view.addSubview(cir)
    }
    
    @IBAction private func animationStyles(_ sender: UISegmentedControl) {
        addToView()
    }
    
    @IBAction private func percentagestyles(_ sender: UISegmentedControl) {
        addToView()
    }
    
}

