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

            NavigationLink(destination: DescriptionWindow(id: recipe.idDrink)) {
                
                AsyncImage(url: URL(string: (recipe.strDrinkThumb))) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 100)
                }placeholder: {
                    ProgressView()
                }
    
                Text(recipe.strDrink)
                    .font(Font.custom("Copperplate", size: 20))
                
            }
            
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
