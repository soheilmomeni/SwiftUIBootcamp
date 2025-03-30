//
//  ButtonTutorial.swift
//  SwiftUITutorial
//
//  Created by Admin on 3/12/25.
//

import SwiftUI

struct ButtonTutorial: View {
    
    @State var backgroundColor : Color = .blue
    
    
    var body: some View {
        VStack{
            Rectangle()
                .fill(backgroundColor)
                .frame(width: UIScreen.main.bounds.width,height: 200)
                .ignoresSafeArea()
            
            
            Button{
                backgroundColor = .pink
            }label: {
                Text("Change color to pink")
                    .foregroundColor(.pink)
            }
            
            Button{
                backgroundColor = .blue
            }label: {
                Text("Change color to blue")
                    .frame(width: 300,height: 60)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            
            Button{
                backgroundColor = .green
            }label: {
                Text("Change color to green")
                    .padding(.horizontal,70)
                    .padding(.vertical,16)
                    .background(.green)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .shadow(radius: 10,x: 5,y: 5)
            }
            
            Button{
                backgroundColor = .black
            }label: {
                Circle()
                    .fill(Color.black)
                    .frame(width: 80,height: 80)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .foregroundColor(.white)
                            .font(.title)
                            
                    )
            }
            
            Button{
                backgroundColor = .cyan
            }label: {
                Image(systemName: "bell")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 80,height: 80)
                    .background(.cyan)
                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            }
            
            
            Spacer()
            
        }
        
    }
}

#Preview {
    ButtonTutorial()
}
