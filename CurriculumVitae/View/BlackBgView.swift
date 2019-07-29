//
//  BlackBgView.swift
//  CurriculumVitae
//
//  Created by Edgar Escorza on 7/29/19.
//  Copyright © 2019 Edgar Escorza. All rights reserved.
//

import UIKit

class BlackBgView: UIView {
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
}

class BlackBgButton: UIButton {
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
}
