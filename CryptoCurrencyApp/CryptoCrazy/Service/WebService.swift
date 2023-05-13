//
//  WebService.swift
//  CryptoCrazy
//
//  Created by Krishna Prakash on 06/12/22.
//

import Foundation

class WebService {
    func downloadCurrencies(url: URL, completion: @escaping ([CryptoCurrency]?) -> () ){
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
               let cryptolist = try? JSONDecoder().decode([CryptoCurrency].self, from: data)
                print(cryptolist)
                
                if let cryptolist = cryptolist {
                    completion(cryptolist)
                }
                
            }
        }.resume()
        
    }
}
