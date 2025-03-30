//
//  Spaceer.swift
//  SwiftUITutorial
//
//  Created by Admin on 3/10/25.
//

import SwiftUI

struct SpacerTutorial: View {
    var body: some View {
        VStack
        {
            Spacer()

            
            Spacer()
                .frame(width: 100,height: 100)
                .background(.blue)

            Text("spacer tutorial")
            HStack{
                Spacer()
//                    .frame(height: 10)
                    .background(.red)
                Text("hi")
                    .padding(.all)
            }
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SpacerTutorial()
}
