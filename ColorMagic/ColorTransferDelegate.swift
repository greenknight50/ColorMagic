//
//  ColorTransferDelegate.swift
//  ColorMagic
//
//  Created by Ashraf Mohammed on 2/26/18.
//  Copyright © 2018 Ashraf Mohammed. All rights reserved.
//

import Foundation
import UIKit

protocol  ColorTransferDelegate {
    func userSelectedAColor(color: UIColor, withName colorName: String)
}
