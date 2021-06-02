//
//  TrendsView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI
import SwiftUICharts

struct TrendsView: View {
    
<<<<<<< HEAD
   @Binding var barchartdata: [(String, Int)]
   @Binding var linegraphdata: [Double]
=======
    @Binding var barchartdata: [(String, Int)]
>>>>>>> parent of cccf645 (Adding CoreData)
    
    var body: some View {
        ZStack{
            Color(.black).ignoresSafeArea(.all)
            VStack{
                LineChartView(data: [8,23,54,32,12,37,7,23,43], title: "Quantity of Items")
                BarChartView(data: ChartData(values: barchartdata), title: "Quantity of Each Item")
                PieChartView(data: [8,23,54,32], title: "Title")
            }
        }
    }
}
