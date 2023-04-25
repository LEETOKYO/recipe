//
//  RecipeFeatureView.swift
//  4.3 day28 practice1
//
//  Created by 李 on 2023/04/22.
//

import SwiftUI

struct RecipeFeatureView: View {
    @EnvironmentObject var model:RecipeModel
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            //title
            Text("Featured Recipes")
                .bold()
                .padding(.leading)
                .padding(.top,40)
                .font(.largeTitle)
            GeometryReader{
                geo in
                TabView{
                    //LESS THAN THE AMOUNT OF COUNT
                    //loop through each recipe
                    ForEach(0..<model.recipes.count){
                        index in
                        //only show those that should be featured
                        // if equals true
                        if model.recipes[index].featured == true
                        {
                            
                            ZStack {
                                Rectangle()
    //                                .frame(width: geo.size.width-40,height: geo.size.height-100,alignment: .center)
    //                                .cornerRadius(15)
                                    .foregroundColor(.white)
                            
                                VStack(spacing:0){
                                    Image(model.recipes[index].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill )
                                        .clipped()
                                    Text(model.recipes[index].name)
                                        .padding(6)
                                }
                            }
                            frame(width: geo.size.width-40,height: geo.size.height-100,alignment: .center)
                                .cornerRadius(15)
                                .shadow(radius: 10)
                        }
                        
                    }
                }
          //tabviewstyle 滑动节目的建立
                // make shadow  background
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
                
            }
            VStack{
                Text("Preparation time:")
                    .font(.headline)
                Text("1 hour")
                Text("Highlights")
                    .font(.headline)
                Text("healthy.hearty")
            }
            .padding([.leading, .bottom])
        }
        
    }
}



struct RecipeFeatureView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeatureView()
            .environmentObject(RecipeModel())
    }
}
