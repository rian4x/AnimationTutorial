//
//  ViewController.swift
//  Animation Tutorial
//
//  Created by Rian Erlangga Saputra on 24/06/20.
//  Copyright © 2020 rerlanggas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var easeInOutButton: UIButton!
    @IBOutlet weak var easeOutButton: UIButton!
    @IBOutlet weak var easeInButton: UIButton!
    @IBOutlet weak var linearButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func playTapped(_ sender: Any) {
        startAnimationButton1()
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        resetAnimation()
    }
    
    private func startAnimationButton1() {
        UIView.animate(withDuration: 1, delay: 0, options: .curveLinear, animations: {
            self.linearButton.transform = CGAffineTransform.init(translationX: 200, y: 0)
        }) { [weak self] _ in
            self?.linearButton.transform = CGAffineTransform.identity
        }
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.easeInButton.transform = CGAffineTransform.init(translationX: 200, y: 0)
        }) { [weak self] _ in
            self?.easeInButton.transform = CGAffineTransform.identity
        }
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: {
            self.easeOutButton.transform = CGAffineTransform.init(translationX: 200, y: 0)
        }) { [weak self] _ in
            self?.easeOutButton.transform = CGAffineTransform.identity
        }
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
            self.easeInOutButton.transform = CGAffineTransform.init(translationX: 200, y: 0)
        }) { [weak self] _ in
            self?.easeInOutButton.transform = CGAffineTransform.identity
        }
    }
    
    private func resetAnimation() {
        easeInOutButton.transform = CGAffineTransform.identity
        easeOutButton.transform = CGAffineTransform.identity
        easeInButton.transform = CGAffineTransform.identity
        linearButton.transform = CGAffineTransform.identity
    }
}

