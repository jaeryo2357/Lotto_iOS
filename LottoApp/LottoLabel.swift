//
//  LottoLabel.swift
//  LottoApp
//
//  Created by YangMinUk on 05/05/2020.
//  Copyright © 2020 MinUkYang. All rights reserved.
//

import UIKit

class LottoLabel: UILabel {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.clipsToBounds = true
        self.layer.cornerRadius = 0.5 * self.bounds.width
        self.textColor = UIColor.white
        self.font = UIFont.boldSystemFont(ofSize: 16.0)
    }
}
