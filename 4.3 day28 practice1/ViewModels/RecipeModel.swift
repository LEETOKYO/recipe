//
//  RecipeModel.swift
//  4.3 day28 practice1
//
//  Created by 李 on 2023/04/03.
//

import Foundation
class RecipeModel:ObservableObject {
    @Published var recipes = [Recipe]()
    init(){
        //craete an instance of data service and get the data
        self.recipes = DataService.getLocalData()
    }
}
