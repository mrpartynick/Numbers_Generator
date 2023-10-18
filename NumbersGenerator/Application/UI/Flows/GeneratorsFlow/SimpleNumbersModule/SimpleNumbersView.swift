//
//  SimpleNumbersView.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import UIKit

class SimpleNumbersView: BaseNumbersController {
    private let presenter: ISimpleNumbersPresenter
    
    init(presenter: ISimpleNumbersPresenter) {
        self.presenter = presenter
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

