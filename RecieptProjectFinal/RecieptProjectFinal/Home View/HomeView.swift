//
//  HomeView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            Color(.black).ignoresSafeArea(.all)
            VStack{
                Text("Hello World")
                    .foregroundColor(.white)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
