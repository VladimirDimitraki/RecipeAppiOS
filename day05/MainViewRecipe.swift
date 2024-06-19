//
//  MainViewRecipe.swift
//  day05
//
//  Created by Melania Dababi on 6/15/24.
//

import SwiftUI

struct MainViewRecipe: View {
    
    @StateObject var network = Network.shared
    
    var body: some View {
        List(network.recipes, id: \.idDrink) { recipe in
            Text(recipe.strDrink)
//            Image(recipe.strImageSource)
        }
    }
}

struct MainViewRecipe_Previews: PreviewProvider {
    static var previews: some View {
        MainViewRecipe()
    }
}
