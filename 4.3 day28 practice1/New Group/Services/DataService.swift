//
//  DataService.swift
//  4.3 day28 practice1
//
//  Created by 李 on 2023/04/03.
//

import Foundation
class DataService {
    //定义函数解析json本地文档
    static func getLocalData()-> [Recipe]{
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        guard pathString != nil else {
            return [Recipe]()
        }
        let url = URL(fileURLWithPath: pathString!)
        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do{
                let recipeData = try decoder.decode([Recipe].self, from: data)
                for r in recipeData {
                    r.id = UUID()
                    //add unique ids to ingredients of the recipe
                    for i in r.ingredients{
                        i.id=UUID()
                    }
                }
                return recipeData
            }
            catch{
                print(error)
            }
        }
        catch{
            print(error)
        }
        return [Recipe]()
    }
}
