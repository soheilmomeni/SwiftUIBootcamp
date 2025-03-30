//
//  GridViewTutorial.swift
//  SwiftUITutorial
//
//  Created by Admin on 3/12/25.
//

import SwiftUI

struct GridViewTutorial: View {
    let items = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns : items){
                
                ForEach(0...100,id: \.self){ index in
                    Rectangle()
                        .frame(height: 50)
                        .background(.red)
                }
                
            }
        }
    }
}

#Preview {
    GridViewTutorial()
}
