//
//  ViewController.swift
//  LottieDemo
//
//  Created by Jamer Quiroga on 7/20/19.
//  Copyright © 2019 Jamer Quiroga. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    @IBOutlet weak var imgLogo: UIImageView!
    
    let loaderAnimationView: AnimationView = {
        
        let animationView = AnimationView()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        return animationView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let animationFile = Animation.named("loader"){
            
            view.addSubview(loaderAnimationView)
            
            loaderAnimationView.animation = animationFile
            loaderAnimationView.loopMode = .loop
            loaderAnimationView.play()
            
            NSLayoutConstraint.activate([
                loaderAnimationView.topAnchor.constraint(equalTo: imgLogo.bottomAnchor, constant: 10),
                loaderAnimationView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                loaderAnimationView.widthAnchor.constraint(equalToConstant: 55),
                loaderAnimationView.heightAnchor.constraint(equalToConstant: 55)
                ])
        }
    }
}

