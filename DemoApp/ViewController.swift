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

    override func viewDidLoad() {
        
        
        // percentages array with colors Array iniitializer of RingPieChart
        //you can remove animate property if you want to animate piechart.
        //Animate property is true by default
        
        let cir = Circular(percentages: [42,27,18,13], colors: [#colorLiteral(red: 0.2768642902, green: 0.552749753, blue: 0.9582422376, alpha: 1),#colorLiteral(red: 0.6800097227, green: 0.2969456911, blue: 0.8304955363, alpha: 1),#colorLiteral(red: 0.9592140317, green: 0.4973406196, blue: 0.08628573269, alpha: 1),#colorLiteral(red: 0.9573473334, green: 0.2803060114, blue: 0.4532059431, alpha: 1)],animated: true)
        cir.frame = CGRect(x: 50, y: 50, width: 250, height: 250)
        cir.center = self.view.center
   //     cir.lineWidth = 12 you can set the chart width with this lineWidth property
        self.view .addSubview(cir)
        
     
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

