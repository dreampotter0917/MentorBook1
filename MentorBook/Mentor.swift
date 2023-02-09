//
//  Mentor.swift
//  MentorBook
//
//  Created by あらいゆめ on 2023/02/10.
//


import UIKit

class Mentor{
    
    var name:String
    
    var course:String
    
    var imageName:String
    
    init(name: String, course: String, imageName: String) {
        self.name = name
        self.course = course
        self.imageName = imageName
    }
    
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    }
}

