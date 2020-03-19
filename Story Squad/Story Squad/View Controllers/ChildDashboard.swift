//
//  ChildProfileMainVC.swift
//  Story Squad
//
//  Created by Jonalynn Masters on 2/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit
import CoreData
// swiftlint:disable all
class ChildDashboard: UIViewController {
    
    // MARK: - Properties
    
    var networkingController: NetworkingController?
    var parentUser: Parent?
    var childUser: Child?
    
    // MARK: - Outlets
    @IBOutlet weak var missionControlCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    private func updateViews() {
        missionControlCollectionView.delegate = self
        missionControlCollectionView.dataSource = self
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

extension ChildDashboard: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, NSFetchedResultsControllerDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
           //swiftlint:disable force_cast
        let acceptMissionCell = missionControlCollectionView.dequeueReusableCell(withReuseIdentifier: "AcceptMissionCell", for: indexPath) as! AcceptMissionCell
        
        return acceptMissionCell
            
        } else if indexPath.item == 1 {
           //swiftlint:disable force_cast
        let adventurePassportCell = missionControlCollectionView.dequeueReusableCell(withReuseIdentifier: "AdventurePassportCell", for: indexPath) as! AdventurePassportCell
           
        return adventurePassportCell
            
        } else if indexPath.item == 2 {
           //swiftlint:disable force_cast
        let changeAvatarCell = missionControlCollectionView.dequeueReusableCell(withReuseIdentifier: "ChangeYourAvatarCell", for: indexPath) as! ChangeYourAvatarCell
           
        return changeAvatarCell
            
        } else {
           //swiftlint:disable force_cast
        let trophyRoomCell = missionControlCollectionView.dequeueReusableCell(withReuseIdentifier: "TrophyRoomCell", for: indexPath) as! TrophyRoomCell
           
        return trophyRoomCell
            
        }
    }
        //swiftlint:disable force_cast
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
//        if indexPath.item == 0 {
//        performSegue(withIdentifier: "AcceptMissionSegue", sender: self)
//            
//        } else if indexPath.item == 1 {
//        performSegue(withIdentifier: "AdventurePassportSegue", sender: self)
//            
//        } else if indexPath.item == 2 {
//        performSegue(withIdentifier: "ChangeAvatarSegue", sender: self)
//            
//        } else {
//        performSegue(withIdentifier: "TrophyRoomSegue", sender: self)
//        }
    }
}
