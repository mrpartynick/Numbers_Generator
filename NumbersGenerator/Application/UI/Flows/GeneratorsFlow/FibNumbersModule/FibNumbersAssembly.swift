//
//  FibNumbersAssembly.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import UIKit

class FibNumbersAssembly {
    public static func buildModule() -> UIViewController {
        let interactor = FibNumbersInteractor()
        let presenter = FibNumbersPresenter(interactor: interactor)
        interactor.presenter = presenter
        let view = FibNumbersView(presenter: presenter)
        presenter.view = view
        
        return view
    }
}