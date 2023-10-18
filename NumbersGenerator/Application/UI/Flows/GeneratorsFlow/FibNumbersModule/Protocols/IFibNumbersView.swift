//
//  FibNumbersView.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import Foundation

protocol IFibNumbersView: AnyObject {
    func showFibNumber(number: Int, for indexPath: IndexPath)
}
