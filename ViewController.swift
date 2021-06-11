//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by ata altan on 11.06.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Imageview: UIImageView!
    @IBOutlet weak var label1: UILabel!
    var isPicture1 = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        Imageview.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        Imageview.addGestureRecognizer(gestureRecognizer)
    
    
    
    }
    
    @objc func changePic(){
        
        if isPicture1 == true{
            Imageview.image = UIImage(named: "metallica 2")
            label1.text = "picture 2"
           isPicture1 = false
            
        }else{
            Imageview.image = UIImage(named: "metallica")
            label1.text = "picture 1"
           isPicture1 = true
        }
        
    }
    

}

