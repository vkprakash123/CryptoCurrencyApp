//
//  CryptoViewModel.swift
//  CryptoCrazy
//
//  Created by Krishna Prakash on 06/12/22.
//

import Foundation

struct CryptoListViewModel {
    let cryptoCurrencyList : [CryptoCurrency]

}

extension CryptoListViewModel {
    func numberOfRowsInSection() -> Int {
        return self.cryptoCurrencyList.count
    }
    
    func cryptoAtIndex(_ index: Int) -> CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCureency: crypto)
    }
}

struct CryptoViewModel {
    let cryptoCureency : CryptoCurrency

}

extension CryptoViewModel {
    var name: String {
        return self.cryptoCureency.currency
    }
    
    var price: String{
        return self.cryptoCureency.price
    }
}
