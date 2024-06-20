//
//  Recipe.swift
//  day05
//
//  Created by Melania Dababi on 6/19/24.
//

import Foundation
import SwiftUI

struct Recipe: Decodable, Hashable {
    let idDrink: String
    let strDrink: String
    let strInstructions: String
    let strDrinkThumb: String
}

struct ResultQuery: Decodable {
    let drinks: [Recipe]
}
