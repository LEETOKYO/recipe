//
//  RecipeDetailView.swift
//  4.3 day28 practice1
//
//  Created by 李 on 2023/04/03.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe:Recipe
    var body: some View {
        ScrollView{
            //MARK: Recipe Image
            VStack(alignment: .leading) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                
                //MARK: Ingredients
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.bottom, 5.0)
                    ForEach(recipe.ingredients,id: \.self){
                        item in Text("=" + item)
                    
                    }
                }
                //整体协调
                .padding(.horizontal)
                //隐约横线
                Divider()
                //MARK: Directions
                VStack(alignment: .leading){
                    Text("Directions")
                        .font(.headline)
                        .padding([.bottom, .top] ,5.0)
                    
                      
                    ForEach(0..<recipe.directions.count,id: \.self){
                        index in
                        Text(String(index+1)+"* "+recipe.directions[index])
                            .padding(.bottom, 5.0)
                        
                         
                    }
               
                }
                .padding(.horizontal)
                
            }
            .padding(.horizontal, 10.0)
            
        }
    }
}
struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        RecipeDetailView(recipe:model.recipes[0])
    }
}
