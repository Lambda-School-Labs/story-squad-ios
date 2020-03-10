//
//  HelpViewController.swift
//  Story Squad
//
//  Created by Jonalynn Masters on 2/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class HelpViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumLabel: UILabel!
    @IBOutlet weak var backgoundBlueView: UIView!
    @IBOutlet weak var faqButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
           
           // Adds Google Analytics tracking for this view controller
           guard let tracker = GAI.sharedInstance().defaultTracker else { return }
           tracker.set(kGAIScreenName, value: "HelpViewController")

           guard let builder = GAIDictionaryBuilder.createScreenView() else { return }
           tracker.send(builder.build() as [NSObject : AnyObject])
       }
    
    @IBAction func faqButtonPressed(_ sender: UIButton) {
    }
    
    private func updateViews() {
        faqButton.layer.cornerRadius = 10
        backgoundBlueView.layer.cornerRadius = 10
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
