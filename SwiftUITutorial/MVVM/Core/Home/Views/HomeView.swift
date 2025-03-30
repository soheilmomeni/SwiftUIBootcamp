//
//  HomeView.swift
//  SwiftCoinTutorial
//
//  Created by Admin on 3/15/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView(.vertical,showsIndicators: false){
                
                //top movers
                TopMoversView(viewModel: homeViewModel)
                
                Divider()
                
                //all coins
                AllCoinsView(viewModel: homeViewModel)
            }
            
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}
