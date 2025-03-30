//
//  TopMoversView.swift
//  SwiftCoinTutorial
//
//  Created by Admin on 3/15/25.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel : HomeViewModel
    var body: some View {
        VStack(alignment: .leading){
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack(spacing: 16){
                    ForEach(viewModel.topMovingCoins){ coin in
                        
                        TopMoversItemView(coin: coin)
                                
                    }
                }
            }
        }
        .padding()
    }
}

//#Preview {
//    TopMoversView()
//}
