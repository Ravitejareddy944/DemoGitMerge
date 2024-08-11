//
//  DemoViewModel.swift
//  DemoGitMerge
//
//  Created by Neo on 11/08/24.
//

import Foundation

protocol DemoViewModelProtocol{
    func didButtonTapped()
}

class DemoViewModel: DemoViewModelProtocol{
    func didButtonTapped() {
        print("Button tapped")
    }
}
