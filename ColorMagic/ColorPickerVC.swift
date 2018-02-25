//
//  ColorPickerVC.swift
//  ColorMagic
//
//  Created by Ashraf Mohammed on 2/25/18.
//  Copyright © 2018 Ashraf Mohammed. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delegate: ColorTransferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func colorBtnPressed(sender: UIButton) {
        delegate?.userSelectedAColor(color: sender.backgroundColor!, withName: (sender.titleLabel?.text)!)
        print("\(sender.titleLabel!.text!) + \(sender.backgroundColor!)")
        self.navigationController?.popViewController(animated: true)
    }

}
