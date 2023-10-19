//
//  ICalculator.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 19.10.2023.
//

import Foundation


protocol ICalculator {
    func calculate(by order: Int, completion: @escaping (Int)->())
}
