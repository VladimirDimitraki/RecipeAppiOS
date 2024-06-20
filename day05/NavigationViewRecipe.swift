//
//  NavigationViewRecipe.swift
//  day05
//
//  Created by Melania Dababi on 6/20/24.
//

import SwiftUI

struct NavigationViewRecipe: View {
    @StateObject var network = Network()
    
    var body: some View {
        NavigationView {
            VStack {
                ContentView(recipies: network)
                    .navigationTitle("Drink recipeis")
//                NavigationLink(destination: Text(""), label: {
//                    Text("Description")
//                })
            }
        }
    }
}

struct NavigationViewRecipe_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewRecipe()
    }
}
