//
//  ISimpleNumbersInteractor.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import Foundation

protocol INumbersInteractor: AnyObject {
    func calculateNumber(for accountOrder: Int)
}
