//
//  ISimpleNumbersInterOut.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import Foundation

protocol ISimpleNumbersInterOut: AnyObject {
    func handleCalculationResult(result: Int, order: Int)
}