//
//  FibNumbersView.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import UIKit

class FibNumbersView: BaseNumbersController {
    private let presenter: IFibNumbersViewOut
    
    init(presenter: IFibNumbersViewOut) {
        self.presenter = presenter
        super.init()
        title = "Числа Фибоначчи"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        presenter.cellDidLoad(for: indexPath)
        let cell = super.collectionView(collectionView, cellForItemAt: indexPath)
        return cell
    }
}

extension FibNumbersView: IFibNumbersView {
    func showFibNumber(number: Int, for indexPath: IndexPath) {
        guard let cell = collectionView.cellForItem(at: indexPath) as? NumberCell else {return}
        cell.showedNumber = number
    }
}

