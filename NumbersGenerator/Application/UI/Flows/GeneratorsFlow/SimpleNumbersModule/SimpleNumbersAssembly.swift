//
//  SimpleNumbersAssembly.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import UIKit


class SimpleNumbersAssembly {
    public static func buildModule() -> UIViewController {
        let interactor = SimpleNumbersInteractor()
        let presenter = SimpleNumbersPresenter(interactor: interactor)
        let view = SimpleNumbersView(presenter: presenter)
        interactor.presenter = presenter
        presenter.view = view
        return view
    }
}

