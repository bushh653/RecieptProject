//
//  MainView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//
import SwiftUI

struct MainView: View {
    
    init() {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithTransparentBackground()
            appearance.largeTitleTextAttributes = [
                NSAttributedString.Key.foregroundColor : UIColor.white
            ]
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().tintColor = .white
            
        }
    
    // The text that will be changed and saved starts with information for the user
    
    @State private var recognizedText = "Tap button to start scanning"
    @State var barchartdata: [(String, Int)] = []
    
    var body: some View {
        NavigationView{
            TabView{
                HomeView()
                     .tabItem {
                         Image(systemName: "house")
                         Text("Home")
                     }
               ScanView(recognizedText: $recognizedText).navigationBarHidden(true)
                    .tabItem {
                        Image(systemName: "camera")
                        Text("Scan")
                    }
                CardView(recognizedText: $recognizedText)
                    .tabItem {
                        Image(systemName: "folder")
                        Text("Files")
                    }
                ShoppingView(barchartdata: $barchartdata).navigationBarHidden(true)
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Shopping List")
                    }
                TrendsView(barchartdata: $barchartdata).navigationBarHidden(true)
                    .tabItem {
                        Image(systemName: "line.diagonal.arrow")
                        Text("Trends")
                    }
            }
        }
    }
}

