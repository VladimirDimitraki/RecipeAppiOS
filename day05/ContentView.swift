//
//  ContentView.swift
//  day05
//
//  Created by Melania Dababi on 6/14/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var network: Network
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationViewRecipe(network: network)
                    .navigationTitle("Drink recipeis")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(network: Network())
    }
}

