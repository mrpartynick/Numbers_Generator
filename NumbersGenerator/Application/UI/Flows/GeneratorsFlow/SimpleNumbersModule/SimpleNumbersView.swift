//
//  SimpleNumbersView.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import UIKit

class SimpleNumbersView: BaseNumbersController {
    override init() {
        super.init()
        title = Strings.Titles.simpleNumbers
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

