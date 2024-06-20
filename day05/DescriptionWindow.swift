//
//  DescriptionWindow.swift
//  day05
//
//  Created by Melania Dababi on 6/20/24.
//

import SwiftUI

struct DescriptionWindow: View {
    
    @ObservedObject var network = Network()
    
    let id: String
    
    var body: some View {
        VStack() {
            
            Text(convertText())
                .font(Font.custom("Avenir", size: 20))
                .padding()
            
        } .onAppear {
            network.getRecipe()
        }
    }
}

struct DescriptionWindow_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionWindow(id: "")
    }
}

extension DescriptionWindow {
    func convertText() -> String {
        let recipe = network.recipes.filter {
            return $0.idDrink == id
        }
        var outRecipeDesc = ""
        if let newRecipe = recipe.first {
            outRecipeDesc = newRecipe.strInstructions
        }
        return outRecipeDesc
    }
}
