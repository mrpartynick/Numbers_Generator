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
        interactor.calculateFibNumber(for: indexPath.row)
    }
    
}

extension FibNumbersPresenter: IFibNumbersInterOut {
    func handleCalculationResult(result: Int, order: Int) {
        let indexPath = IndexPath(row: order, section: 0)
        DispatchQueue.main.async {
            if result == 0 {
                self.view?.showOverflow(for: indexPath)
            } else {
                self.view?.showFibNumber(number: result, for: indexPath)
            }

        }
    }
}
