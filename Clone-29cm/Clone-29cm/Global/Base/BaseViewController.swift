//
//  BaseViewController.swift
//  Clone-29cm
//
//  Created by 김유나 on 2023/08/22.
//

import UIKit

class BaseViewController: UIViewController {
        
    // MARK: life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        render()
        configUI()
        setupNavigationPopGesture()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self)
    }
    
    func render() {
        
    }
    
    func configUI() {
        view.backgroundColor = .white
    }
    
    // MARK: - helper func
    
    func setupNavigationPopGesture() {
        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        navigationController?.interactivePopGestureRecognizer?.delegate = nil
    }
}

