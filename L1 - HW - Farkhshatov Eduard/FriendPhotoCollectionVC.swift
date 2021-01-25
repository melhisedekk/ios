//
//  FriendPhotoCollectionVC.swift
//  L1 - HW - Farkhshatov Eduard
//
//  Created by Эдуард Фархшатов on 13.04.2020.
//  Copyright © 2020 Эдуард Фархшатов. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

@available(iOS 13.0, *)
class FriendPhotoCollectionVC: UICollectionViewController {
    
    var friend: Friend!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return friend.photos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendPhotoCollectionViewCell", for: indexPath) as! FriendPhotoCollectionViewCell
        cell.friendPhoto.image = friend.photos[indexPath.row]
        return cell
    }
}

@available(iOS 13.0, *)
extension FriendPhotoCollectionVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.size.width / 1) - 1,
                      height: (view.frame.size.width / 1) - 1)
    }
}
