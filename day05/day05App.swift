//
//  day05App.swift
//  day05
//
//  Created by Melania Dababi on 6/14/24.
//

import SwiftUI

@main
struct day05App: App {
    
    @StateObject var network = Network()
    
    var body: some Scene {
        WindowGroup {
            ContentView(network: network)
        }
    }
}
