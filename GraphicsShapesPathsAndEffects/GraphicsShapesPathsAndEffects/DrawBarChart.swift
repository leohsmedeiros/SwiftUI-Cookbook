//
//  DrawBarChart.swift
//  GraphicsShapesPathsAndEffects
//
//  Created by Leonardo Medeiros on 09/01/23.
//

import SwiftUI

struct BarChartView: View {
    let values: [Int]
    let labels: [String]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .bottom) {
                ForEach(values.indices, id: \.self) { index in
                    let label = labels[index]
                    let value = values[index]
                    
                    VStack {
                        Text("\(value)")
                            .font(.system(size: 11))
                        Rectangle()
                            .frame(width: 44, height: CGFloat(value))
                        Text(label)
                    }
                }
            }
        }
    }
}

struct DrawBarChart: View {
    let prices = getHistoricalStocks().map { Int($0.price) }
    let labels = (2000...2020).map { String($0) }

    var body: some View {
        VStack {
            BarChartView(values: prices, labels: labels)
                .padding()
        }
    }
}

struct DrawBarChart_Previews: PreviewProvider {
    static var previews: some View {
        DrawBarChart()
    }
}
