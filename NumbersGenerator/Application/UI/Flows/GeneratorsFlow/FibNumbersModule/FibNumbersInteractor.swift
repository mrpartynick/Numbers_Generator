//
//  FibNumbersInteractor.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import Foundation

class FibNumbersInteractor{
    public weak var presenter: IFibNumbersInterOut?
}

extension FibNumbersInteractor: IFibNumbersInteractor {
    func calculateFibNumber(for accountOrder: Int) {
        
    }
}
