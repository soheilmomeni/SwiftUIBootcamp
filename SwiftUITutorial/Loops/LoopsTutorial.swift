//
//  LoopsTutorial.swift
//  SwiftUITutorial
//
//  Created by Admin on 3/11/25.
//

import SwiftUI

struct LoopsTutorial: View {
    let drivers: [String] = [
        "title1",
        "title2",
        "title3",
        "title4"
    ]
    var body: some View {
        
        VStack{
            ForEach(drivers,id: \.self){user in
                
                UserRowView(name: user)
                
            }
        }
    }
}



#Preview {
    LoopsTutorial()
}
