//
//  MainViewController.swift
//  ProductScreenGit
//
//  Created by Кристина on 03.04.2025.
//

import Foundation
import UIKit
import SnapKit

class MainViewController: UIViewController {

    
    private lazy var button: UIButton = {
        let but = UIButton()
        but.setTitle("Next", for: .normal)
        but.backgroundColor = .blue
        but.layer.cornerRadius = 10
        return but
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
    }
    
    // MARK: - Methods
    
    @objc private func buttonTapped() {
        let viewController = ProductViewController()
        viewController.modalPresentationStyle = .pageSheet
        present(viewController, animated: true)
    }
}

extension MainViewController {
    
    func setupUI() {
        view.backgroundColor = .white
        
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(150)
        }
        
        
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

    }
}
