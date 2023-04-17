//
//  Recipe.swift
//  4.3 day28 practice1
//
//  Created by 李 on 2023/04/03.
//

import Foundation
class Recipe: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var ingredients:[String]
    var directions:[String]
    
}
