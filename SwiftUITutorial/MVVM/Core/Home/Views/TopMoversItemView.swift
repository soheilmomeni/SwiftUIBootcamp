//
//  TopMoversItemView.swift
//  SwiftCoinTutorial
//
//  Created by Admin on 3/15/25.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin : Coin
    
    var body: some View {
        VStack(alignment:.leading){
            //image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32,height: 32)
                .foregroundStyle(.orange)
                .padding(.bottom,8)
            
            
             
            //coin info
            HStack(spacing: 2){
                Text(coin.symbol.uppercased())
                    .font(.subheadline)
                    .fontWeight(.bold)
                
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .fontWeight(.regular)
            }
            
            //coin percent change
            Text((coin.priceChangePercentage24H.toPercent()))
                .font(.title2)
                .foregroundStyle(coin.priceChangePercentage24H >= 0 ? .green : .red)
        }
        .padding()
        .frame(width: 140,height: 140)
        .overlay{
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4),lineWidth: 2)
        }
    }
}

//#Preview {
//    TopMoversItemView(coin: Coin())
//}
