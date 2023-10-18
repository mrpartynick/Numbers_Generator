//
//  SimpleNumbersCalculator.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import Foundation
import Darwin

class SimpleNumbersCalculator {
    private let calculationQueue = DispatchQueue(label: "services.simpleNumbersCalculator")
    private var simpleNumbers: [Int] = []
    private var currentMaxOrder = 0
    
    public func calculateSimpleNumber(order: Int, completion: @escaping (Int) -> ()) {
        if order > currentMaxOrder {
            
            calculationQueue.async {
                let number = self.calculate(n: order)
                self.simpleNumbers.append(number)
                self.currentMaxOrder += 1
                completion(number)
            }
            
        } else {
            let number = simpleNumbers[order-1]
            completion(number)
        }
    }
    
    private func calculate(n: Int) -> Int {
        if let lastSimple = simpleNumbers.last {
            var currentNumber = lastSimple + 1
            
            while !isSimple(number: currentNumber) {
                currentNumber += 1
            }
            
            return currentNumber
        } else {
            return 2
        }
    }
    
    private func isSimple(number: Int) -> Bool {

        for i in 2..<number {
            if number % i == 0 {
                return false
            }
        }
        
        return true
    }
}
