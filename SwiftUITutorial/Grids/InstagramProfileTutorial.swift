//
//  InstagramProfileTutorial.swift
//  SwiftUITutorial
//
//  Created by Admin on 3/12/25.
//

import SwiftUI

struct InstagramProfileTutorial: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    let width = UIScreen.main.bounds.width / 3
    
    var body: some View {
        ScrollView{
            VStack{
                
                //navBar
                HStack{
                    Image(systemName: "chevron.left")
                        .font(.title2)
                    Spacer()
                    HStack{
                        Text("SoheilMomeni")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Image(systemName: "checkmark.seal.fill")
                            .foregroundColor(.blue)
                            .font(.caption)
                    }
                    Spacer()
                }
                
                
                //profileHeader
                HStack{
                    Image(.userProfile)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100,height: 100)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    
                    //status
                    HStack(spacing:30){
                        VStack(spacing: 3){
                            Text("3,266")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Posts")
                                .font(.caption)
                            
                        }
                        VStack(spacing: 3){
                            Text("1.4M")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Followers")
                                .font(.caption)
                            
                        }
                        VStack(spacing: 3){
                            Text("493")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Following")
                                .font(.caption)
                            
                        }
                    }
                    
                    
                }
                
            
                
                //userInfo
                VStack(alignment:.leading,spacing: 2){
                    Text("Developer (Swift)")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("www.google.com")
                        .font(.caption)
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.vertical,4)
                
                //detail
                HStack{
                    HStack(spacing: -12){
                        Image(.userProfile)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 32,height: 32)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.white,lineWidth: 2)
                            )
                        
                        Image(.userProfile)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 32,height: 32)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.white,lineWidth: 2)
                            )
                        
                        Image(.userProfile)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 32,height: 32)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.white,lineWidth: 2)
                            )
                        
                    }
                    
                    Text("Followed by sina,soheil and 430 others")
                        .font(.subheadline)
                        .scaledToFit()
                    
                    Spacer()
                }
                
                
                //action buttons
                HStack{
                    Text("Following")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .frame(width: 152,height: 34)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color(.systemGray4))
                        )
                    
                    
                    Text("Message")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .frame(width: 152,height: 34)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color(.systemGray4))
                        )
                    
                    Image(systemName:"person.badge.plus")
                        .font(.footnote)
                        .frame(width: 32,height: 34)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color(.systemGray4))
                        )
                    
                }
                
                //grid
                LazyVGrid(columns: columns,spacing: 0){
                    ForEach(0..<15,id: \.self){ index in
                        
                        Image(.userProfile)
                            .resizable()
                            .scaledToFill()
                            .frame(width: width, height: width)
                            .border(.white)
                            .clipped()
                        
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    InstagramProfileTutorial()
}
