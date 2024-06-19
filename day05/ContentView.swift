//
//  ContentView.swift
//  day05
//
//  Created by Melania Dababi on 6/14/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var recipies: Network
    
    var body: some View {
        List(recipies.recipes, id: \.idDrink) { recipe in
            Text(recipe.strDrink)
            Image(recipe.strDrinkThumb)
        }.onAppear {
            self.recipies.getRecipe()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(recipies: Network())
    }
}
