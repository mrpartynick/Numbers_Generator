//
//  SimpleNumbersAssembly.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import UIKit


class NumbersAssembly {
    public static func buildModule() -> UIViewController {
        let calculator = SimpleNumbersCalculator()
        let interactor = NumbersInteractor(calculator: calculator)
        let presenter = NumbersPresenter(interactor: interactor)
        let view = NumbersView(presenter: presenter)
        interactor.presenter = presenter
        presenter.view = view
        return view
    }
    
    public static func getFibModule() -> UIViewController {
        let calculator = FibNumbersCalculator()
        let interactor = NumbersInteractor(calculator: calculator)
        let presenter = NumbersPresenter(interactor: interactor)
        let view = NumbersView(presenter: presenter)
        interactor.presenter = presenter
        presenter.view = view
        return view
    }
}

