//
//  ViewController.swift
//  Vibration
//
//  Created by Mohamad Mortada on 11/6/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        button.frame = CGRect(x: 100, y: 300, width: 200, height: 50)
        button.addTarget(self, action: #selector(Vibrate), for: .touchUpInside)
        view.addSubview(button)
        button1.frame = CGRect(x: 100, y: 400, width: 200, height: 50)
        button1.addTarget(self, action: #selector(Vibrate2), for: .touchUpInside)
        view.addSubview(button1)
        button2.frame = CGRect(x: 100, y: 500, width: 200, height: 50)
        button2.addTarget(self, action: #selector(Vibrate3), for: .touchUpInside)
        view.addSubview(button2)
    }
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Success Vibrate", for: .normal)
        button.backgroundColor = .link
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 12  
        return button
    }()
    
    private let button1: UIButton = {
        let button = UIButton()
        button.setTitle("Warning Vibrate", for: .normal)
        button.backgroundColor = .link
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 12
        return button
    }()
    private let button2: UIButton = {
        let button = UIButton()
        button.setTitle("Error Vibrate", for: .normal)
        button.backgroundColor = .link
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 12
        return button
    }()
    @objc func Vibrate() {
        Haptics.shared.vibrate(for: .success)
    }
    @objc func Vibrate2() {
        Haptics.shared.vibrate(for: .warning)
    }
    @objc func Vibrate3() {
        Haptics.shared.vibrate(for: .error)
    }



}
