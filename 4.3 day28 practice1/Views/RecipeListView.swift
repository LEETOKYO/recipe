//
//  ContentView.swift
//  4.3 day28 practice1
//
//  Created by 李 on 2023/04/03.
//

import SwiftUI

struct RecipeListView: View {
   //
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        NavigationView {
            List(model.recipes) { r in
                NavigationLink(
                    destination: RecipeDetailView(recipe: r),
                    label: {
                        HStack {
                            Image(r.image)
                                .resizable()
                                .frame(width: 60.0, height: 60.0)
                            Text(r.name)
                        }
                    }
                )
            }
            .navigationTitle("All Recipes")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
