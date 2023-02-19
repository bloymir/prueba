//
//  ScrollViewController.swift
//  UIKit in code
//
//  Created by nelson tapia on 18-02-23.
//

import UIKit

final class ScrollViewController: UIViewController {
    
    var mainScrollView = UIScrollView()
    var contentView = UIView()
    
//    private let mainScrollView: UIScrollView = {
//        let scroll = UIScrollView()
//        scroll.translatesAutoresizingMaskIntoConstraints = false
//        return scroll
//    }()
//
//    private let contentView: UIView = {
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
    
    private let redView: UIView = {
       let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let blueView: UIView = {
       let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let yellowView: UIView = {
       let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI(){
        view.backgroundColor = .white
        title = "Scroll View"
        
        configScroll()

        contentView.addSubview(redView)
        redView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        redView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        redView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        contentView.addSubview(blueView)
        blueView.topAnchor.constraint(equalTo: redView.bottomAnchor).isActive = true
        blueView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        blueView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        blueView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        
        contentView.addSubview(yellowView)
        yellowView.topAnchor.constraint(equalTo: blueView.bottomAnchor).isActive = true
        yellowView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        yellowView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        yellowView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        yellowView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
}


extension ScrollViewController: ViewScrolllable { }
