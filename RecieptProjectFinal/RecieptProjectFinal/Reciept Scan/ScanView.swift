//
//  ScanView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI
import UIKit
import Vision
import VisionKit

// Create the UI for the ScanView

struct ScanView: View {
    
    // This is for the scanned text and is stored in Main View
    @Binding var recognizedText: String
    
    // This is for the sheet view that is the camera
    @State private var showingScanningView = false
    
    var body: some View {
        NavigationView{
            ZStack {
                Color(.black).ignoresSafeArea(.all)
                VStack {
                    // This is where the scanned text will initially appear
                    // Scroll View is to insure that the user will be able to see all the text
                    Spacer()
                    ScrollView {
                        // Text for the scanned text
                        Text(recognizedText)
                            .foregroundColor(.white)
                            .padding()
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        // Button to toggle the value that presents the sheet
                        Button(action: {
                            self.showingScanningView = true
                        }) {
                            Text("Start Scanning")
                        }.padding()
                        .foregroundColor(.white)
                        .background(Capsule().fill(Color("Charcoal")))
                    }.padding()
                }
            }.navigationBarTitle("Receipt Scanner")
            // Sheet view for the camera to scan, passes in recognised text to change it's value and pass it back
            .sheet(isPresented: $showingScanningView) {
                ScanDocumentView(recognizedText: self.$recognizedText)
            }
        }
    }
}
