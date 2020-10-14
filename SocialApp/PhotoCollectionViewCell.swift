//
//  PhotoCollectionViewCell.swift
//  SocialApp
//
//  Created by Anna on 10.10.2020.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    var likes = 0;
    
    @IBAction func likeButtonAction(_ sender: Any) {
        if likes == 0 {
            likes += 1
        } else {
            likes -= 1
        }
        
        likeButton.imageView?.image = UIImage(named: likes > 0 ? "heart.fill" : "heart")
    }
    
}
