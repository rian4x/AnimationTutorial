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
        _startAnimationButton1()
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        _resetAnimation()
    }
    
    @IBAction func linearButtonTapped(_ sender: Any) {
        UIView.animate(withDuration: 1, delay: 0, options: .curveLinear, animations: { [weak self] in
            self?.linearButton.transform = CGAffineTransform.init(translationX: 200, y: 0)
        }) { [weak self] _ in
            UIView.animate(withDuration: 1, delay: 0, options: .curveLinear, animations: {
                self?.linearButton.transform = CGAffineTransform.identity
            })
        }
    }
    
    @IBAction func easeInButtonTapped(_ sender: Any) {
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.easeInButton.transform = CGAffineTransform.init(translationX: 200, y: 0)
        }) { [weak self] _ in
            UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
                self?.easeInButton.transform = CGAffineTransform.identity
            })
        }
    }
    
    @IBAction func easeOutButtonTapped(_ sender: Any) {
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: {
            self.easeOutButton.transform = CGAffineTransform.init(translationX: 200, y: 0)
        }) { [weak self] _ in
            UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: {
                self?.easeOutButton.transform = CGAffineTransform.identity
            })
        }
    }
    
    @IBAction func easeInOutButtonTapped(_ sender: Any) {
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
            self.easeInOutButton.transform = CGAffineTransform.init(translationX: 200, y: 0)
        }) { [weak self] _ in
            UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
                self?.easeInOutButton.transform = CGAffineTransform.identity
            })
        }
    }
    
    
    private func _startAnimationButton1() {
        linearButtonTapped(self)
        easeInButtonTapped(self)
        easeOutButtonTapped(self)
        easeInOutButtonTapped(self)
    }
    
    private func _resetAnimation() {
        easeInOutButton.transform = CGAffineTransform.identity
        easeOutButton.transform = CGAffineTransform.identity
        easeInButton.transform = CGAffineTransform.identity
        linearButton.transform = CGAffineTransform.identity
    }
}

