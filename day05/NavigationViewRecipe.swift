//
//  NavigationViewRecipe.swift
//  day05
//
//  Created by Melania Dababi on 6/20/24.
//

import SwiftUI

struct NavigationViewRecipe: View {
    
    @ObservedObject var network = Network()
    
    var body: some View {
        List(network.recipes, id: \.idDrink) { recipe in

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
            self.network.getRecipe()
        }
    }
}

struct NavigationViewRecipe_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewRecipe()
    }
}
