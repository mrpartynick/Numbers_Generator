//
//  SimpleNumbersPresenter.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import Foundation

class SimpleNumbersPresenter: ISimpleNumbersPresenter {
    private let interactor: ISimpleNumbersInteractor
    public weak var view: ISimpleNumbersView?
    
    init(interactor: ISimpleNumbersInteractor) {
        self.interactor = interactor
    }
    
    func cellDidLoad(for indexPath: IndexPath) {
        
    }
}
