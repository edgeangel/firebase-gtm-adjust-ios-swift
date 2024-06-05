//
//  ViewController.swift
//  firebase-gtm-adjust-ios-swift
//
//  Created by Mathieu Lima EdgeAngel on 05/06/2024.
//

import UIKit
import FirebaseAnalytics
import Adjust

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create UIImageView for the app icon
        let imageView = UIImageView()
        imageView.image = UIImage(named: "AppIcon")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        // Create 1st button
        let button1 = UIButton(type: .system)
        button1.setTitle("Send test_event", for: .normal)
        button1.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button1.addTarget(self, action: #selector(sendTestEvent), for: .touchUpInside)
        
        // Create 2nd button
        let button2 = UIButton(type: .system)
        button2.setTitle("Send adjust_test_event", for: .normal)
        button2.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button2.addTarget(self, action: #selector(sendAdjustTestEvent), for: .touchUpInside)
        
        // Create a stack view to hold the image and buttons
        let stackView = UIStackView(arrangedSubviews: [imageView, button1, button2])
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        // Add the stack view to the main view
        view.addSubview(stackView)
        
        // Define constraints for the stack view
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
            
    @objc func sendTestEvent() {
        Analytics.logEvent("test_event", parameters: [
            "text_param": "text_value",
        ])
        print("test_event sent")
    }
    
    @objc func sendAdjustTestEvent() {
        Analytics.logEvent("adjust_test_event", parameters: [
            "value": 0.07,
            "currency": "EUR",
        ])
        print("adjust_test_event sent")
    }


}

