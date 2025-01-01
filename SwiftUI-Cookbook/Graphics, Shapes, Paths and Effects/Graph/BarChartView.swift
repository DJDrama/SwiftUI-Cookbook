//
//  BarChartView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/1/25.
//

import SwiftUI

private func getHistoricalStocks() -> [Stock] {
    var stocks = [Stock]()
    for _ in 1...20 {
        let stock = Stock(price: Double.random(in: 100...300))
        stocks.append(stock)
    }
    return stocks
}

private func getYearlyLabels() -> [String] {
    return (2005...2024).map { String($0) }
}

struct BarChart: View {
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
                        Rectangle()
                            .fill(value <= 200 ? .red : .blue)
                            .frame(width: 50, height: CGFloat(value))
                        Text(label)
                    }.padding([.leading, .trailing], 8)
                }
            }
        }
    }
}

struct BarChartView: View {
    let prices = getHistoricalStocks().map { Int($0.price) }
    let labels = getYearlyLabels()
    
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                BarChart(values: prices, labels: labels)
            }.navigationTitle("Bar Chart")
        }
        
    }
}

#Preview {
    BarChartView()
}
