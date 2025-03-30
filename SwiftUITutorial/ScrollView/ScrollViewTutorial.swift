//
//  ScrollViewTutorial.swift
//  SwiftUITutorial
//
//  Created by Admin on 3/11/25.
//

import SwiftUI

struct ScrollViewTutorial: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack {
                ForEach(0...100,id: \.self){ index in
                    
                    Rectangle()
                        .frame(width: 100,height: 100)
                        .background(.red)
                    
                }
            }
        }
    }
}

#Preview {
    ScrollViewTutorial()
}
