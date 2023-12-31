//
//  ISimpleNumbersView.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import Foundation

protocol INumbersView: AnyObject {
    func showSimpleNumber(number: Int, for indexPath: IndexPath, overflow: Bool)
}
