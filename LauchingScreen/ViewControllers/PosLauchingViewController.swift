//
//  PosLauchingViewController.swift
//  LauchingScreen
//
//  Created by Adriano Rodrigues Vieira on 12/12/21.
//

import UIKit

class PosLauchingViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        view = PosLaunchingView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()        
    }
}

// MARK: - view

fileprivate class PosLaunchingView: UIView {
    private lazy var label = createLabel()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .orange
        addSubview(label)
        
        NSLayoutConstraint.activate(
            [
                label.centerYAnchor.constraint(equalTo: centerYAnchor),
                label.centerXAnchor.constraint(equalTo: centerXAnchor),
                label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
                label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
            ]
        )
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func createLabel() -> UILabel {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.font = .systemFont(ofSize: 40, weight: .thin)
        label.backgroundColor = .yellow
        label.text = "Screen after launch screen :) "
        label.textAlignment = .center
        label.numberOfLines = .zero
        
        return label
    }
}
