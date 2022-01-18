//
//  MainViewController.swift
//  HomeWorkUpdate2.2
//
//  Created by Богдан Олейник on 18.01.2022.
//

import UIKit

protocol ColorViewControllerDelegate {
    func setColor(_ color: UIColor)
}

class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let colorVC = segue.destination as? ColorViewController
        colorVC?.delegate = self
        colorVC?.viewColor = view.backgroundColor
        
    }
}

extension MainViewController: ColorViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}

