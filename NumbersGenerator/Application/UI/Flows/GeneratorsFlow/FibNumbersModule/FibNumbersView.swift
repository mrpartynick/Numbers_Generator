//
//  FibNumbersView.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import UIKit

class FibNumbersView: BaseNumbersController {
    override init() {
        super.init()
        title = Strings.Titles.fibNumbers
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

