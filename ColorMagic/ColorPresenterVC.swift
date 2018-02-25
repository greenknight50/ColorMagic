//
//  ColorPresenterVC.swift
//  ColorMagic
//
//  Created by Ashraf Mohammed on 2/25/18.
//  Copyright © 2018 Ashraf Mohammed. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {
    
    @IBOutlet weak var colorNameLbl: UILabel!
    
    func userSelectedAColor(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLbl.text = colorName
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerSegue" {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else { return }
            colorPickerVC.delegate = self
        }
    }

}

