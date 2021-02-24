//
//  MainView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//
import SwiftUI

struct MainView: View {
    
    @State private var recognizedText = "Tap button to start scanning"
    
    var body: some View {
        NavigationView{
            TabView{
                HomeView()
                     .tabItem {
                         Image(systemName: "house")
                         Text("Home")
                     }
               ScanView()
                    .tabItem {
                        Image(systemName: "camera")
                        Text("Scan")
                    }
                FileView()
                    .tabItem {
                        Image(systemName: "folder")
                        Text("Files")
                    }
                ShoppingView()
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Shopping List")
                    }
                TrendsView()
                    .tabItem {
                        Image(systemName: "line.diagonal.arrow")
                        Text("Trends")
                    }
            }
        }
    }
}

