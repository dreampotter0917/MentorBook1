//
//  ViewController.swift
//  MentorBook
//
//  Created by あらいゆめ on 2023/02/10.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray:[Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!

    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        mentorArray.append(Mentor(name: "ながた", course: "iphone", imageName: "nagata.jpg"))
        mentorArray.append(Mentor(name: "りょう", course: "Unity", imageName: "ryo.jpg"))
        mentorArray.append(Mentor(name: "たいてぃ", course: "WebS,WebD", imageName: "taithi.jpg"))
    }
    
    
        func setUI(){
            imageView.image = mentorArray[index].getImage()
            nameLabel.text = mentorArray[index].name
            courseLabel.text = mentorArray[index].course
        }
    


    
    @IBAction func mae(){
       
        if index <= 0{
            index = 2
        }else {
            index = index-1
        }
        setUI()
    }
    
    @IBAction func tugi(){
        if index == 2{
            index = 0
        }else {
            index = index+1
        }
        setUI()
    }
}

