//
//  BaseNumbersController.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import UIKit


class BaseNumbersController: UICollectionViewController {
    
    init() {
        super.init(collectionViewLayout: UICollectionViewLayout())
        collectionView.collectionViewLayout = createLayout()
        collectionView.register(NumberCell.self, forCellWithReuseIdentifier: NumberCell.id)
        configureTabBar()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - create layout
    private func createLayout() -> UICollectionViewLayout {
        let spacing: CGFloat = 0
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .fractionalHeight(1/10))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 2)
        group.interItemSpacing = .fixed(spacing)

        let section = NSCollectionLayoutSection(group: group)
        section.contentInsets = .init(top: spacing, leading: spacing, bottom: spacing, trailing: spacing)
        section.interGroupSpacing = spacing

        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
    
    internal func configureTabBar() {
        
    }
}

//MARK: - collection data source
extension BaseNumbersController {
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Int.max
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NumberCell.id, for: indexPath) as! NumberCell
        cell.showedNumber = indexPath.row
        cell.backgroundColor = .blue
        cell.configureBackground(for: indexPath)
        return cell
    }
}
