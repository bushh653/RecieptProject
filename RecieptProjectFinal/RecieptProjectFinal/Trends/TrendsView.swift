//
//  TrendsView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI
import SwiftUICharts

struct TrendsView: View {
    
   @Binding var barchartdata: [(String, Int)]
   @Binding var linegraphdata: [Double]
    
    var body: some View {
        ZStack{
            Color(.black).ignoresSafeArea(.all)
            VStack{
                LineChartView(data: linegraphdata, title: "Quantity of Items")
                BarChartView(data: ChartData(values: barchartdata), title: "Quantity of Each Item")
            }
        }
    }
}
