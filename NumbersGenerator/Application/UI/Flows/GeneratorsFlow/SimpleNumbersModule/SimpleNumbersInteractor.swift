//
//  SimpleNumbersInteractor.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import Foundation

class SimpleNumbersInteractor: ISimpleNumbersInteractor {
    private let calculator = SimpleNumbersCalculator()
    public weak var presenter: ISimpleNumbersInterOut?
    
    func calculateSimpleNumber(for accountOrder: Int) {
        calculator.calculateSimpleNumber(order: accountOrder) {[weak self] number in
            guard let self = self else {return}
            self.presenter?.handleCalculationResult(result: number, order: accountOrder)
        }
    }
}
