//
//  IFibNumbersCalculator.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import Foundation

protocol IFibNumbersCalculator: AnyObject {
    func calculateByOrder(order: Int, completion: @escaping (Int)->())
}
