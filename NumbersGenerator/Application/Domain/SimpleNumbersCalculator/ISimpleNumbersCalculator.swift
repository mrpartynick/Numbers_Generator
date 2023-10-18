//
//  ISimpleNumbersCalculator.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import Foundation

protocol ISimpleNumbersCalculator: AnyObject {
    func calculate(by order: Int, completion: @escaping (Int)->())
}
