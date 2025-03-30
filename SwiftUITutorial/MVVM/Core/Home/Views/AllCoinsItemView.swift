//
//  AllCoinsItemView.swift
//  SwiftCoinTutorial
//
//  Created by Admin on 3/15/25.
//

import SwiftUI
import Kingfisher

struct AllCoinsItemView: View {
    let coin : Coin
    var body: some View {
        HStack(alignment: .center){
            Text("\(Int( coin.marketCapRank ?? 1))")
                .foregroundStyle(.gray)
            
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32,height: 32)
                .foregroundStyle(.orange)
                .padding(.bottom,8)
            
            VStack(alignment: .leading){
                Text(coin.name)
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text(coin.symbol.uppercased())
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            VStack(alignment: .trailing){
                Text(coin.currentPrice.toCurrency())
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text(coin.priceChangePercentage24H.toPercent())
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(coin.priceChangePercentage24H >= 0 ? .green : .red)
            }
            
            
        }
        .padding(.horizontal)
    }
}
//
//#Preview {
//    AllCoinsItemView()
//}
