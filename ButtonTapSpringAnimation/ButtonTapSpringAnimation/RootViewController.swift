//
//  ViewController.swift
//  ButtonTapSpringAnimation
//
//  Created by Vibhor Gupta on 8/16/19.
//  Copyright © 2019 Vibhor Gupta. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.layer.cornerRadius = 12
        button.backgroundColor = UIColor.init(red: 48/255, green: 48/255,
                                              blue: 255/255, alpha: 1)
        button.setTitle("Button", for: .normal)
        button.addTarget(self, action: #selector(handleClick), for: .touchUpInside)

        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 60)
            ])
    }


    @objc func handleClick(sender : UIButton){
        self.animateView(sender)
    }

    fileprivate func animateView(_ viewToAnimate:UIView){
        UIView.animate(withDuration: 0.15, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, options: .curveEaseIn, animations: {
            viewToAnimate.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
        }) { (_) in

            UIView.animate(withDuration: 0.15, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.55, options: .curveEaseIn, animations: {
                viewToAnimate.transform = CGAffineTransform(scaleX: 1, y: 1)

            }, completion: { (_) in

            })

       }
    }
}

