//
//  MarketDataModel.swift
//  BeCoin
//
//  Created by André Porto on 24/08/23.
//

import Foundation

// JSON DATA
/*
 URL: https://api.coingecko.com/api/v3/global
 
 JSON response:
 
 {
 "data": {
 "active_cryptocurrencies": 10187,
 "upcoming_icos": 0,
 "ongoing_icos": 49,
 "ended_icos": 3376,
 "markets": 837,
 "total_market_cap": {
 "btc": 41940874.851696186,
 "eth": 663444641.3751805,
 "ltc": 16908261999.816269,
 "bch": 5699684460.895012,
 "bnb": 5027798007.538091,
 "eos": 1872837372377.4644,
 "xrp": 2115947203053.038,
 "xlm": 8849172683142.521,
 "link": 180120945307.14523,
 "dot": 247824361506.84824,
 "yfi": 194436767.15099946,
 "usd": 1091041330913.5557,
 "aed": 4007432994892.064,
 "ars": 381819624021043.2,
 "aud": 1699179040434.1208,
 "bdt": 119193179937421.83,
 "bhd": 411329128002.3951,
 "bmd": 1091041330913.5557,
 "brl": 5314571427013.012,
 "cad": 1481202075013.5642,
 "chf": 965368644170.9452,
 "clp": 924611297254922.1,
 "cny": 7940489702255.761,
 "czk": 24364043960630.555,
 "dkk": 7524266162842.878,
 "eur": 1009418346865.2488,
 "gbp": 865493629697.7858,
 "hkd": 8556109773223.742,
 "huf": 387634253512295.3,
 "idr": 16634141463389892,
 "ils": 4142563918932.3633,
 "inr": 90102063030441.9,
 "jpy": 159105466245792.56,
 "krw": 1448409734589541.8,
 "kwd": 336629892240.0678,
 "lkr": 354031714524268.75,
 "mmk": 2291091974698476,
 "mxn": 18338768210660.453,
 "myr": 5067886982093.47,
 "ngn": 824827246170644.5,
 "nok": 11681015801159.773,
 "nzd": 1842524414654.8677,
 "php": 61911135958524.19,
 "pkr": 326766878608609.25,
 "pln": 4521594950415.729,
 "rub": 103103415590702.66,
 "sar": 4093073193120.791,
 "sek": 11996261283313.94,
 "sgd": 1479887370209.8145,
 "thb": 38219177821901.78,
 "try": 28050346396429.527,
 "twd": 34735373748161.695,
 "uah": 40295714236417.66,
 "vef": 109245968464.37395,
 "vnd": 26189219935471484,
 "zar": 20528580900317.086,
 "xdr": 820351794631.2393,
 "xag": 45196408953.92069,
 "xau": 568999874.8980365,
 "bits": 41940874851696.19,
 "sats": 4194087485169618.5
 },
 "total_volume": {
 "btc": 1850085.7756037435,
 "eth": 29265710.31836996,
 "ltc": 745853183.2407945,
 "bch": 251423108.93176544,
 "bnb": 221785015.43533912,
 "eos": 82614151347.7397,
 "xrp": 93338153677.9897,
 "xlm": 390352575258.2407,
 "link": 7945451781.332413,
 "dot": 10931968579.414532,
 "yfi": 8576947.868456138,
 "usd": 48127752557.772705,
 "aed": 176774919616.03833,
 "ars": 16842735344590.291,
 "aud": 74953776811.4546,
 "bdt": 5257820861652.422,
 "bhd": 18144451480.79562,
 "bmd": 48127752557.772705,
 "brl": 234435095484.16623,
 "cad": 65338429383.442345,
 "chf": 42584109251.65303,
 "clp": 40786230975453.18,
 "cny": 350268970340.21375,
 "czk": 1074740842367.6199,
 "dkk": 331908617761.44354,
 "eur": 44527219133.42053,
 "gbp": 38178446654.76189,
 "hkd": 377425054720.9373,
 "huf": 17099228881032.021,
 "idr": 733761244123248.9,
 "ils": 182735782409.0813,
 "inr": 3974560515359.181,
 "jpy": 7018422027747.421,
 "krw": 63891901556310.336,
 "kwd": 14849336774.175161,
 "lkr": 15616961769872.703,
 "mmk": 101064097684603.23,
 "mxn": 808955328867.3206,
 "myr": 223553410630.8544,
 "ngn": 36384580933676.01,
 "nok": 515270157209.28076,
 "nzd": 81276993453.50502,
 "php": 2731009126379.793,
 "pkr": 14414261891052.898,
 "pln": 199455508030.90936,
 "rub": 4548073049859.279,
 "sar": 180552659425.30807,
 "sek": 529176190033.32367,
 "sgd": 65280435441.610275,
 "thb": 1685915172098.7747,
 "try": 1237350128062.3196,
 "twd": 1532238445406.5503,
 "uah": 1777514846559.6343,
 "vef": 4819031863.609765,
 "vnd": 1155252565620105.5,
 "zar": 905551819109.7377,
 "xdr": 36187160892.68412,
 "xag": 1993693112.260787,
 "xau": 25099585.51392958,
 "bits": 1850085775603.7434,
 "sats": 185008577560374.34
 },
 "market_cap_percentage": {
 "btc": 46.41496647085967,
 "eth": 18.119697435135222,
 "usdt": 7.589965446887454,
 "bnb": 3.060153752168949,
 "xrp": 2.5007356565371683,
 "usdc": 2.3691644813317745,
 "steth": 1.260544630245216,
 "ada": 0.8497273351131435,
 "doge": 0.808764124082201,
 "sol": 0.7828405191724487
 },
 "market_cap_change_percentage_24h_usd": -1.3943792890203137,
 "updated_at": 1692904306
 }
 }
 
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "brl" }) {
            return "R$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "brl" }) {
            return "R$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
    
}
