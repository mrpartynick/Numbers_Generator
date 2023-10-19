//
//  SimpleNumbersInteractor.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import Foundation

class NumbersInteractor: ISimpleNumbersInteractor {
    private let calculator: ICalculator
    public weak var presenter: ISimpleNumbersInterOut?
    
    init(calculator: ICalculator) {
        self.calculator = calculator
    }
    
    func calculateSimpleNumber(for accountOrder: Int) {
        calculator.calculate(by: accountOrder) {[weak self] result in
            guard let self = self else {return}
            self.presenter?.handleCalculationResult(result: result, order: accountOrder)
        }
    }
}
