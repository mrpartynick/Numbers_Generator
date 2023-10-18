//
//  StatableCell.swift
//  NumbersGenerator
//
//  Created by Николай Циминтия on 18.10.2023.
//

import UIKit

class StatableCell: UICollectionViewCell {
    public var state: UIState = .Loading {
        didSet {
            switch state {
            case .Loading:
                loadingDidBegin()
            case .Showing:
                loadingDidEnd()
            }
        }
    }
    
    @objc internal dynamic func loadingDidBegin() {
        
    }
    
    @objc internal dynamic func loadingDidEnd() {
        
    }
}
