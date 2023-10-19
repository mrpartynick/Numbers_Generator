//
//  NumberCell.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import UIKit

class NumberCell: StatableCell {
    public static let id = "NumberCell"
    public var showedNumber = 1 {
        didSet {
            numberLabel.text = showedNumber.description
            state = .Showing
        }
    }
    public var overflowFlag = false {
        didSet {
            numberLabel.text = "Overflow"
        }
    }
    
    private let numberLabel: UILabel = {
        let l = UILabel()
        l.font = l.font.withSize(30)
        l.numberOfLines = 0
        return l
    }()
    
    private let spinner = UIActivityIndicatorView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setConstraints()
        loadingDidBegin()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupHierarchy() {
        contentView.addSubview(spinner)
        contentView.addSubview(numberLabel)
    }
    
    private func setConstraints() {
        numberLabel.translatesAutoresizingMaskIntoConstraints = false
        numberLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        numberLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        numberLabel.leadingAnchor.constraint(greaterThanOrEqualTo: contentView.leadingAnchor).isActive = true
        numberLabel.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor).isActive = true
        
        spinner.frame = contentView.frame
    }
    
    public func configureBackground(for indexPath: IndexPath) {
        let squareIndex = indexPath.item % 4;
        if (squareIndex == 0 || squareIndex == 3) {
            backgroundColor = Colors.grayCellColor
        } else {
            backgroundColor = .white
        }
    }
}

//MARK: - loading state functions
extension NumberCell {
    override func loadingDidBegin() {
        numberLabel.isHidden = true
        spinner.startAnimating()
        spinner.isHidden = false
    }
    
    override func loadingDidEnd() {
        numberLabel.isHidden = false
        spinner.stopAnimating()
        spinner.isHidden = true
    }
}
