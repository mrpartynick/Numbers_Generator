//
//  SimpleNumbersView.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import UIKit

class NumbersView: BaseNumbersController {
    public let tabBarConfiguration: TabBarConfig
    
    private let presenter: INumbersViewOut
    
    init(presenter: INumbersViewOut, configuration: TabBarConfig) {
        self.presenter = presenter
        self.tabBarConfiguration = configuration
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
    
    //MARK: - tab bar configuration
    override func configureTabBar() {
        switch tabBarConfiguration {
        case .SimpleNumbers:
            configureSimpleNumbersTabBar()
        case .FibNumbers:
            configureFibNumbersTabBar()
        }

    }
    
    private func configureSimpleNumbersTabBar() {
        title = Strings.Titles.simpleNumbers
        tabBarItem.image = UIImage(systemName: Strings.Images.plusMinus)
    }
    
    private func configureFibNumbersTabBar() {
        title = Strings.Titles.fibNumbers
        tabBarItem.image = UIImage(systemName: Strings.Images.sum)
    }
}

//MARK: - view protocol
extension NumbersView: INumbersView {
    func showSimpleNumber(number: Int, for indexPath: IndexPath, overflow: Bool) {
        guard let cell = collectionView.cellForItem(at: indexPath) as? NumberCell else {return}
        if overflow {
            cell.overflowFlag = overflow
        } else {
            cell.showedNumber = number
        }
    }
}

