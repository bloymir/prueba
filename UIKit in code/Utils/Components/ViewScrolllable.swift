//
//  ViewScrolllable.swift
//  UIKit in code
//
//  Created by nelson tapia on 19-02-23.
//

import UIKit

protocol ViewScrolllable: AnyObject {
    var mainScrollView: UIScrollView { get set }
    var contentView: UIView { get set }
}


extension ViewScrolllable where Self: UIViewController {
    
    func configScroll() {
        mainScrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        configConstraints()
    }
    
    private func configConstraints(){
        view.addSubview(mainScrollView)
        mainScrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        mainScrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        mainScrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        mainScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        mainScrollView.addSubview(contentView)
        contentView.topAnchor.constraint(equalTo: mainScrollView.topAnchor).isActive = true
        contentView.leftAnchor.constraint(equalTo: mainScrollView.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: mainScrollView.rightAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: mainScrollView.bottomAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: mainScrollView.widthAnchor).isActive = true
    }
}
