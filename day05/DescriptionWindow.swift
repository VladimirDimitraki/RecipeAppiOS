//
//  DescriptionWindow.swift
//  day05
//
//  Created by Melania Dababi on 6/20/24.
//

import SwiftUI

struct DescriptionWindow: View {
    
    @StateObject var network = Network()
    
    let id: String
    
    var body: some View {
        for recipeIndex in network.recipes {
            if recipeIndex.idDrink == id {
                Text(recipeIndex.strInstructions)
            }
        }
    }
}

struct DescriptionWindow_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionWindow(id: "")
    }
}
