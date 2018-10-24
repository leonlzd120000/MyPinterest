//
//  UploadVCViewController.swift
//  MyInstagram
//
//  Created by leon on 2018/10/22.
//  Copyright © 2018年 leonlee. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage


class UploadVC: UIViewController ,UIImagePickerControllerDelegate,UINavigationControllerDelegate{

    @IBOutlet weak var postComment: UITextView!
    @IBOutlet weak var postImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        postImage.isUserInteractionEnabled = true
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(UploadVC.choosePhoto))
        postImage.addGestureRecognizer(recognizer)
    
    }

    
    @IBAction func postButtonClicked(_ sender: UIButton) {
    }
    
    @objc func choosePhoto(){
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        present(picker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        postImage.image = info[UIImagePickerControllerEditedImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }

}
