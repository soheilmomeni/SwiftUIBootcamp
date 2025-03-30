//
//  ContainerRelativeTutorial.swift
//  SwiftUITutorial
//
//  Created by Admin on 3/19/25.
//

import SwiftUI

struct ContainerRelativeTutorial: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .containerRelativeFrame([.horizontal,.vertical]) { length, axis in
                    if (axis == .horizontal)
                    {
                        return length
                    }
                    else
                    {
                        return length / 2
                    }
                }
                .background(.blue)
            
            ScrollView(.horizontal)
            {
                HStack{
                    ForEach(0..<10){ index in
                        ZStack{
                            Rectangle()
                            .containerRelativeFrame(.horizontal, count: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/, spacing: 16)
                            .foregroundStyle(.green)
                            
                            Text("\(index)")
                        }
                    }
                }
            }
        }
        //// fill cover
//        .containerRelativeFrame([.horizontal,.vertical])
        
        //// just one direction custom size
//        .containerRelativeFrame(.vertical, { length, _ in
//            return length / 2
//        })
        
        //// custom all direction
//        .containerRelativeFrame([.horizontal,.vertical], { length, axis in
//            if( axis == .horizontal)
//            {
//                return length  // horizontal divided by 1
//            }else{
//                return length / 3 // vertical divided by 2
//            }
//        })
        
//        .background(.blue)
    }
}

#Preview {
    ContainerRelativeTutorial()
}
