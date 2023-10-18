//
//  FibNumbersView.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import UIKit

class FibNumbersView: BaseNumbersController {
    private let presenter: IFibNumbersViewOut
    
    init(presenter: IFibNumbersViewOut) {
        self.presenter = presenter
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension FibNumbersView: IFibNumbersView {
    func showFibNumber(number: Int, for indexPath: IndexPath) {
        
    }
}

