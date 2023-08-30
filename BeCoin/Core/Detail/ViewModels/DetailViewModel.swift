//
//  DetailViewModel.swift
//  BeCoin
//
//  Created by André Porto on 30/08/23.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    @Published var overviewStatistics: [StatisticModel] = []
    @Published var additionalStatistics: [StatisticModel] = []
    
    @Published var coin: CoinModel
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coin = coin
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        
        coinDetailService.$coinDetails
            .combineLatest($coin)
            .map({ (coinDetailModel, coinModel) -> (overview: [StatisticModel], additional: [StatisticModel]) in
                
                // Overview
                let price = coinModel.currentPrice.asCurrencyWith6Decimals()
                let pricePercentChange = coinModel.priceChangePercentage24H
                let priceStat = StatisticModel(title: "Preço Atual", value: price, percentageChange: pricePercentChange)
                
                let marketCap = "R$" + (coinModel.marketCap?.formattedWithAbbreviations() ?? "")
                let marketCapChange = coinModel.marketCapChangePercentage24H
                let marketCapStat = StatisticModel(title: "Capitalização", value: marketCap, percentageChange: marketCapChange)
                
                let rank = "\(coinModel.rank)"
                let rankStat = StatisticModel(title: "Classificação", value: rank)
                
                let volume = "R$" + (coinModel.totalVolume?.formattedWithAbbreviations() ?? "")
                let volumeStat = StatisticModel(title: "Volume", value: volume)
                
                var overviewArray: [StatisticModel] = [
                    priceStat, marketCapStat, rankStat, volumeStat
                ]
                
                // Additional
                let high = coinModel.high24H?.asCurrencyWith6Decimals() ?? "n/a"
                let highStat = StatisticModel(title: "24h Alta", value: high)
                
                let low = coinModel.low24H?.asCurrencyWith6Decimals() ?? "n/a"
                let lowStat = StatisticModel(title: "24h Baixa", value: low)
                
                let priceChange = coinModel.priceChange24H?.asCurrencyWith6Decimals() ?? "n/a"
                let pricePercentChange2 = coinModel.priceChangePercentage24H
                let priceChangeStat = StatisticModel(title: "Mudança de preço em 24h", value: priceChange, percentageChange: pricePercentChange2)
                
                let marketCapChange =
                
                
                return (overviewArray, [])
            })
            .sink { returnedArrays in
                print("RECIEVED COIN DETAIL DATA")
                print(returnedArrays.overview)
                print(returnedArrays.additional)
            }
            .store(in: &cancellables)
        
    }
}
