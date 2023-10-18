//
//  FibNumbersInteractor.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import Foundation

class FibNumbersInteractor{
    private let calculator: IFibNumbersCalculator
    public weak var presenter: IFibNumbersInterOut?
    
    init(calculator: IFibNumbersCalculator) {
        self.calculator = calculator
    }
}

extension FibNumbersInteractor: IFibNumbersInteractor {
    func calculateFibNumber(for accountOrder: Int) {
        calculator.calculateByOrder(order: accountOrder) { result in
            self.presenter?.handleCalculationResult(result: result, order: accountOrder)
        }
    }
}
