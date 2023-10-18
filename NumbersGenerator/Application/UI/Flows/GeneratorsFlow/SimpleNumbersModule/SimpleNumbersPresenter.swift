//
//  SimpleNumbersPresenter.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import Foundation

class SimpleNumbersPresenter: ISimpleNumbersViewOut, ISimpleNumbersInterOut {
    private let interactor: ISimpleNumbersInteractor
    public weak var view: ISimpleNumbersView?
    
    init(interactor: ISimpleNumbersInteractor) {
        self.interactor = interactor
    }
    
    func cellDidLoad(for indexPath: IndexPath) {
        interactor.calculateSimpleNumber(for: indexPath.row + 1)
    }
    
    func handleCalculationResult(result: Int, order: Int) {
        let indexPath = IndexPath(row: order-1, section: 0)
        DispatchQueue.main.async {
            self.view?.showSimpleNumber(number: result, for: indexPath)
        }
    }
}
