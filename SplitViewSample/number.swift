//
//  number.swift
//  SplitViewSample
//
//  Created by USER on 28/08/2020.
//  Copyright © 2020 USER. All rights reserved.
//

import Foundation
import UIKit

enum number {
    case one, two, three, four, five
    var image: UIImage {
        switch self {
        case .one:
            return UIImage(named: "one.png")!
        case .two:
            return UIImage(named: "two.png")!
        case .three:
            return UIImage(named: "three.png")!
        case .four:
            return UIImage(named: "four.png")!
        case .five:
            return UIImage(named: "five.png")!
        }
    }
}

class Number {
    let name: String
    let number: number
    
    init(name: String, number: number) {
        self.name = name
        self.number = number
    }
    

}
