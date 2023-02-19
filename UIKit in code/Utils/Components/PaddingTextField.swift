//
//  PaddingTextField.swift
//  UIKit in code
//
//  Created by nelson tapia on 18-02-23.
//

import UIKit

final class PaddingTextField: UITextField {
    private var padding: CGFloat
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y , width: bounds.width - padding * 2, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y , width: bounds.width - padding * 2, height: bounds.height)
    }
    
    init(with padding: CGFloat = 0){
        self.padding = padding
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
