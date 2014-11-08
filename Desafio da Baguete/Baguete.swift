//
//  Baguete.swift
//  Desafio da Baguete
//
//  Created by João Bernardo on 08/11/14.
//  Copyright (c) 2014 jeKnowledge. All rights reserved.
//

import Foundation

class Baguete {
    var type: String = ""
    var extras: [String] = [""]
    
    //Get random baguete from server
    func generateBaguete () {
        var error: NSError?
        var path = "http://randombaguette.herokuapp.com/api"
        var url: NSURL = NSURL(string: path)!
        
        //Server request
        var jsonData: NSData = NSData(contentsOfURL: url)!
        
        //Data parsing
        var jsonDict = NSJSONSerialization.JSONObjectWithData(jsonData, options: nil, error: &error) as NSDictionary
        
        self.type = jsonDict.objectForKey("type")! as String
        self.extras = jsonDict.objectForKey("extras")! as [String]
    }
}