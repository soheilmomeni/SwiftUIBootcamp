//
//  AllCoinsView.swift
//  SwiftCoinTutorial
//
//  Created by Admin on 3/15/25.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel : HomeViewModel
    var body: some View {
        
        VStack(alignment: .leading){
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack{
                Text("Coin")
                
                Spacer()
                
                Text("Price")
            }
            .font(.caption)
            .foregroundStyle(.gray)
            .padding(.horizontal)
            
            
            VStack(spacing:20){
                ForEach(viewModel.coins){ coin in
                    AllCoinsItemView(coin: coin)
                }
            }
            
        }
        
        
    }
}

//#Preview {
//    AllCoinsView()
//}
