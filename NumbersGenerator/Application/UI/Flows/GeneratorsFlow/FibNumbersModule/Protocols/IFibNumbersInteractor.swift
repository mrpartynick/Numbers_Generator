//
//  IFibNumbersInteractor.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import Foundation

protocol IFibNumbersInteractor: AnyObject {
    func calculateFibNumber(for accountOrder: Int)
}
