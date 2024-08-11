//
//  ViewController.swift
//  DemoGitMerge
//
//  Created by Neo on 11/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    let viewModel = DemoViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Merge"
        updateUI()
    }
    
    func updateUI(){
        let button = UIButton()
        button.setButton(radius: 20, borderWidth: 1.0, borderColor: UIColor.white.cgColor , backgroundcolor: UIColor.red.cgColor)
        button.setTitle("Login", for: .normal)
        button.frame = CGRect(x: 100, y: 600, width: 120, height: 40)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button)
        
        let registerButton = UIButton()
        registerButton.setButton(radius: 20, borderWidth: 1.0, borderColor: UIColor.white.cgColor , backgroundcolor: UIColor.red.cgColor)
        registerButton.setTitle("Register", for: .normal)
        registerButton.frame = CGRect(x: 100, y: 650, width: 120, height: 40)
        registerButton.addTarget(self, action: #selector(registerButtonTapped), for: .touchUpInside)
        view.addSubview(registerButton)
    }
    
    @objc func buttonTapped() {
        viewModel.didButtonTapped()
    }
    @objc func registerButtonTapped() {
        viewModel.didButtonTapped()
    }
    
}
