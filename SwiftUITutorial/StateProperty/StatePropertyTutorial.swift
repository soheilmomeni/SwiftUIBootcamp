//
//  StatePropertyTutorial.swift
//  SwiftUITutorial
//
//  Created by Admin on 3/12/25.
//

import SwiftUI

struct StatePropertyTutorial: View {
    @State var number : Int = 0
    @State var likes : Int = 0
//    @State var likeImageName : String = "heart"
//    @State var likeImageColor : Color = .black
//    
    var body: some View {
        VStack
        {
            //counter
            HStack(spacing: 24){
                Button{
                    //decrease counter
                    number -= 1
                }label: {
                    Text("-")
                        .offset(y:-2)
                        .font(.largeTitle)
                        .frame(width: 56,height: 56)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(Circle())
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                
                Text("\(number)")
                    .font(.largeTitle)
                
                
                Button{
                    //increase counter
                    number += 1
                }label: {
                    Text("+")
                        .offset(y:-2)
                        .font(.largeTitle)
                        .frame(width: 56,height: 56)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(Circle())
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                
            }
            
            Divider()
            
            //user profile
            HStack{
                HStack{
                    Image(.userProfile)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 36,height: 36)
                        .clipShape(Circle())
                    
                    Text("_soheilmomeni")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                
                Spacer()
                
                Button{
                    
                }label: {
                    Image(systemName: "ellipsis")
                        .font(.title2)
                        .foregroundStyle(.black)
                }
            }
            .padding()
            
            //image
            
            Image(.userProfile)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width,height: 400)
                .clipped()
            
            //action buttons
            
            HStack(spacing: 20){
                Button{
                    //like
                    likes += 1
                }label: {
                    Image(systemName: likes <= 0 ? "heart" : "heart.fill")
                        .font(.system(size: 15,weight: .semibold))
                        .imageScale(.large)
                        .foregroundStyle(likes <= 0 ? .black : .red)
                }
                
                Button{
                    //bubble
                }label: {
                    Image(systemName: "bubble")
                        .font(.system(size: 15,weight: .semibold))
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                
                Button{
                    //like
                }label: {
                    Image(systemName: "paperplane")
                        .font(.system(size: 15,weight: .semibold))
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                
                Spacer()
            }
            .padding(.leading,6)
            .padding(.top,6)
            
            
            //captions
            VStack(alignment:.leading,spacing:10){
                Text("\(likes) likes")
                    .font(.system(size: 14,weight: .semibold))
//                    .frame(maxWidth: .infinity,alignment: .leading)
                
                
                HStack{
                    Text("_soheilmomeni")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("test description for image")
                        .font(.caption)
                    
                    
                }
            }
            .padding(.horizontal,6)
            .padding(.vertical,6)
            .frame(maxWidth: .infinity,alignment: .leading)
                          
            
        }
    }
}

#Preview {
    StatePropertyTutorial()
}
