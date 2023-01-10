//
//  Stock.swift
//  GraphicsShapesPathsAndEffects
//
//  Created by Leonardo Medeiros on 09/01/23.
//

import Foundation

struct Stock {
    let price: Double
}

func getHistoricalStocks() -> [Stock] {
    var stocks = [Stock]()

    for _ in 1...20 {
        let stock = Stock(price: Double.random(in: 100...300))
        stocks.append(stock)
    }
    return stocks
}
