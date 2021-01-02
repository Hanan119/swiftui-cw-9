//
//  Movie.swift
//  Movies#2
//
//  Created by Hanan Dashti on 02/01/2021.
//

import Foundation

struct Movie: Identifiable {
    
    let name: String
    let characters: [String]
    
    let id = UUID()
    
}

let movies = [
    Movie(name: "Aladdin", characters: ["Aladdin" , "Jasmin" , "Genie"]),
    
   Movie( name: "Coco", characters:  ["Aladdin" , "Jasmin" , "Genie"]),
    
    Movie( name: "ToyStory", characters: ["Woody" , "BUZZ" , "Light Year"])

]


