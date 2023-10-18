//
//  SimpleNumbersView.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import UIKit

class SimpleNumbersView: BaseNumbersController {
    private let presenter: ISimpleNumbersViewOut
    
    init(presenter: ISimpleNumbersViewOut) {
        self.presenter = presenter
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        presenter.cellDidLoad(for: indexPath)
        let cell = super.collectionView(collectionView, cellForItemAt: indexPath)
        return cell
    }
    
    override func configureTabBar() {
        title = Strings.Titles.simpleNumbers
        tabBarItem.image = UIImage(systemName: Strings.Images.plusMinus)
    }
}

extension SimpleNumbersView: ISimpleNumbersView {
    func showSimpleNumber(number: Int, for indexPath: IndexPath) {
        guard let cell = collectionView.cellForItem(at: indexPath) as? NumberCell else {return}
        cell.showedNumber = number
    }
}

