//
//  ScrollViewAdvanceTutorial.swift
//  SwiftUITutorial
//
//  Created by Admin on 3/19/25.
//

import SwiftUI

struct ScrollViewAdvanceTutorial: View {
//    @State var scrollPosition = ScrollPosition()
    let colors : [Color] = [.red,.blue,.green,.purple,.cyan,.pink,.yellow,.teal]
    var body: some View {
        ZStack (alignment: .bottomTrailing){
            ScrollView(.vertical)
            {
                VStack(spacing: 25){
                    ForEach(colors,id: \.self) { color in
                        VStack(alignment: .leading)
                        {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(color)
                                .frame(width: 360,height: 240)
                            
                        }
                    }
                }
            }
            
            VStack(spacing: 16){
                Button {
                    
                }label: {
                    Image(systemName: "arrow.up.circle.fill")
                        .resizable()
                        .frame(width: 56,height: 56)
                        .foregroundStyle(.white, .black)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                
                Button {
                    
                }label: {
                    Image(systemName: "arrow.down.circle.fill")
                        .resizable()
                        .frame(width: 56,height: 56)
                        .foregroundStyle(.white, .black)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                
                Button {
                    
                }label: {
                    Image(systemName: "arrow.up.and.down.circle.fill")
                        .resizable()
                        .frame(width: 56,height: 56)
                        .foregroundStyle(.white, .black)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}

#Preview {
    ScrollViewAdvanceTutorial()
}
