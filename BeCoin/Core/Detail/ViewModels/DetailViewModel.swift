//
//  DetailViewModel.swift
//  BeCoin
//
//  Created by André Porto on 30/08/23.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        
        coinDetailService.$coinDetails
            .sink { returnedCoinDetails in
                print("RECIEVED COIN DETAIL DATA")
                print(returnedCoinDetails)
            }
            .store(in: &cancellables)
        
    }
}
