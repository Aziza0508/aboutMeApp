//
//  DreamDetailsViewController.swift
//  aboutMe
//
//  Created by Aziza Gilash on 11.02.2025.
//

import UIKit

class DreamDetailsViewController: UIViewController {
    
    @IBOutlet weak var dreamLabel: UILabel!
    @IBOutlet weak var dreamTimeline: UITextView!
    
    var dream = Dreams()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dreamLabel.text = dream.dreamLabel
        dreamTimeline.text = dream.timeline.joined(separator: "\n\n")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
