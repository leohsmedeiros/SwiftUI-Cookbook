//
//  DrawLineGraph.swift
//  GraphicsShapesPathsAndEffects
//
//  Created by Leonardo Medeiros on 09/01/23.
//

import SwiftUI

struct LineChartView: View {
    let values: [Int]
    let labels: [String]
    
    let screenWidth = UIScreen.main.bounds.width
    
    private var path: Path {
        if values.isEmpty {
            return Path()
        }
        
        var offsetX: Int = 38
        var path = Path()
        path.move(to: CGPoint(x: 0, y: values[0]))
        
        for value in values {
            offsetX += 38
            path.addLine(to: CGPoint(x: offsetX, y: value))
        }

        return path
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                path
                    .stroke(.black, lineWidth: 2.0)
                    .rotationEffect(.degrees(180), anchor: .center)
                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                HStack {
                    ForEach(labels, id: \.self) { label in
                        Text(label)
                            .font(.system(size: 10))
                            .frame(width: 30)
                    }
                }
            }
        }
    }
}

struct DrawLineGraph: View {
    let prices = getHistoricalStocks().map { Int($0.price) }
    let labels = (2000...2020).map { String($0) }
    let screenWidth = UIScreen.main.bounds.width

    var body: some View {
        VStack {
            LineChartView(values: prices, labels: self.labels)
        }
    }
}

struct DrawLineGraph_Previews: PreviewProvider {
    static var previews: some View {
        DrawLineGraph()
    }
}
