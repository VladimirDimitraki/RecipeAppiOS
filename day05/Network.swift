//
//  Network.swift
//  day05
//
//  Created by Melania Dababi on 6/19/24.
//

import Foundation

class Network: ObservableObject {
    
    @Published var recipes: [Recipe] = []
    
    func getRecipe() {
        guard let url = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita") else {
            print("error URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { print("data error"); return }
            
            do {
                let decodedRecipe = try JSONDecoder().decode(ResultQuery.self, from: data)
                DispatchQueue.main.async {
                    self.recipes = decodedRecipe.drinks
                    

                    for drink in recipes {
                        
                        guard let urlImage = URL(string: drink.strDrinkThumb) else {
                            return
                        }
                        
                        URLSession.shared.dataTask(with: urlImage) { data, response, error in
                            guard let dataImage = data else { return }
                            
                            do {
                                let decodedImage = try JSONDecoder().decode(drink.strDrinkThumb.self, from: data)
                            }
                        }
                    }
                }
            } catch {
                print("Decode error \(error)")
            }
        }.resume()
    }
}
