//
//  CustomFontTutorial.swift
//  SwiftUITutorial
//
//  Created by Admin on 3/22/25.
//

import SwiftUI

struct CustomFontTutorial: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.poppins(fontStyle: .largeTitle, fontWeight: .semibold))
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.poppins(fontStyle: .title2, fontWeight: .semibold))
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.poppins(fontStyle: .largeTitle, fontWeight: .regular))
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.poppins(fontStyle: .title2, fontWeight: .regular))
        }
    }
}

#Preview {
    CustomFontTutorial()
}
