//
//  ViewController.swift
//  aboutMe
//
//  Created by Aziza Gilash on 10.02.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bioText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "aziza")
        imageView.layer.cornerRadius = 10
        
    }
    
}

