//
//  FibNumbersCalculator.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import Foundation

class FibNumbersCalculator {
    private let calculationQueue = DispatchQueue(label: "services.simpleNumbersCalculator")
    private var fibNumbers: [Int] = [1,1]
    private var currentMaxOrder = 2
    
    private func calculate(n: Int) -> Int {
        let parent = fibNumbers[n-1]
        let grandParent = fibNumbers[n-2]
        let children = grandParent + parent
        return children
    }
}

extension FibNumbersCalculator: IFibNumbersCalculator {
    func calculateByOrder(order: Int, completion: @escaping (Int) -> ()) {
        if order >= currentMaxOrder {
            calculationQueue.async {
                let number = self.calculate(n: order)
                self.fibNumbers.append(number)
                self.currentMaxOrder += 1
                completion(number)
            }
        } else {
            let number = fibNumbers[order]
            completion(number)
        }
    }
}
