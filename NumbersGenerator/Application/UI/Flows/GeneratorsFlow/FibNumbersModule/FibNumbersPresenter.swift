//
//  FibNumbersPresenter.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import Foundation

class FibNumbersPresenter {
    private let interactor: IFibNumbersInteractor
    public weak var view: IFibNumbersView?
    
    init(interactor: IFibNumbersInteractor) {
        self.interactor = interactor
    }
}

extension FibNumbersPresenter: IFibNumbersViewOut {
    func cellDidLoad(for indexPath: IndexPath) {
        
    }
    
}

extension FibNumbersPresenter: IFibNumbersInterOut {
    func handleCalculationResult(result: Int, order: Int) {
        
    }
}
