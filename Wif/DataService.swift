//
//  DataService.swift
//  Wif
//
//  Created by Dylan Caetano on 06/11/2024.
//

import Foundation

struct DataService {
    
    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func businessSearch() async {
        
        // Vérifier si la clé d'api existe
        guard apiKey != nil else {
            return
        }
        
        // 1. Créer URL
        if let url = URL(string: "https://api.yelp.com/v3/businesses/search?latitude=35.665517&longitude=139.770398&categories=restaurants&limit=10") {
            
            // 2. Créer requête
            var request = URLRequest(url: url)
            request.addValue("Bearer \(apiKey!)", forHTTPHeaderField: "Authorization")
            request.addValue("application/json", forHTTPHeaderField: "accept")
            
            // 3. envoyer une requête
            do {
                let (data, response) = try await URLSession.shared.data(for: request)
                
                print(data)
                print(response)
                
            } catch {
                print(error)
            }
        }
        
    }
    
}
