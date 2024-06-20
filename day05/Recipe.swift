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
    
//    func decodedImage() -> AsyncImage<Image> {
//        if let url = URL(string: strDrinkThumb) {
//            AsyncImage(url: url) { image in
//                image
//                    .resizable()
//                    .clipShape(Circle())
//            } placeholder: {
//                ProgressView()
//            }
//        }
//        return
//    }
}

struct ResultQuery: Decodable {
    let drinks: [Recipe]
}
