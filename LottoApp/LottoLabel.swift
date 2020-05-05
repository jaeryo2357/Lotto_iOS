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
    
    func settingBackground(value: Int){
        let color : UIColor
        switch value {
        case 0...10:
            //yellow
            color = UIColor.colorForHex(hex: 0xfbc400)
        case 11...20:
            //blue
            color = UIColor.colorForHex(hex: 0x69c8f2)
        case 21...30:
            //red
            color = UIColor.colorForHex(hex: 0xff7272)
        case 31...40:
            //gray
            color = UIColor.colorForHex(hex: 0xcccccc)
        default:
            //green
            color = UIColor.colorForHex(hex: 0xb0d840)
        }
        self.backgroundColor = color
    }
    
}

extension UIColor{
    static func colorForHex(hex : Int, alpha : CGFloat = 1.0) -> UIColor{
        let red : CGFloat = CGFloat((hex & 0xFF0000) >> 16)/255.0
        let green : CGFloat = CGFloat((hex & 0x00FF00) >> 8)/255.0
        let blue : CGFloat = CGFloat(hex & 0x0000FF)/255.0
        return UIColor.init(red: red, green: green, blue: blue, alpha: 1.0)
      }
}
