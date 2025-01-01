//
//  LineGraphView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/1/25.
//

import SwiftUI

struct Stock {
    let price: Double
}

private func getHistoricalStocks() -> [Stock] {
    var stocks = [Stock]()
    for _ in 1...20 {
        let stock = Stock(price: Double.random(in: 100...300))
        stocks.append(stock)
    }
    return stocks
}

private func getYearlyLabels() -> [String] {
    return (2015...2021).map { String($0) }
}

struct LineChartView: View {
    let values: [Int]
    let labels: [String]
    let screenWidth = UIScreen.main.bounds.width
    
    private var path: Path {
        if values.isEmpty {
            return Path() // empty path
        }
        var offsetX: Int = Int(screenWidth/CGFloat(values.count)) // equal width
        var path = Path()
        path.move(to: CGPoint(x: offsetX, y: values[0]))
        
        for value in values {
            offsetX += Int(screenWidth/CGFloat(values.count))
            path.addLine(to: CGPoint(x: offsetX, y: value))
        }
        return path
    }
    
    var body: some View {
        VStack {
            path.stroke(.black, lineWidth: 2.0)
                .rotationEffect(.degrees(180), anchor: .center)
                .rotation3DEffect(
                    .degrees(180),
                    axis: (x: 0, y: 1, z: 0)
                ).frame(maxWidth: .infinity, maxHeight: 300)
            
            HStack {
                ForEach(labels, id: \.self) { label in
                        Text(label)
                        .frame(width: screenWidth/CGFloat(labels.count)-10)
                }
            }
        }
    }
}

struct LineGraphView: View {
    let prices = getHistoricalStocks().map { Int($0.price) }
    let labels = getYearlyLabels()
    
    var body: some View {
        LineChartView(values: prices, labels: labels)
    }
}

#Preview {
    LineGraphView()
}
