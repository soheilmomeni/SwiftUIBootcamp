//
//  UserRow.swift
//  SwiftUITutorial
//
//  Created by Admin on 3/12/25.
//

import SwiftUI

struct UserRowView: View {
    let name : String

    var body: some View {
            HStack{
                Image(systemName: "house")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 56,height: 56)
                    .background(.red)
                    .clipShape(.circle)
                
                
                VStack(alignment: .leading){
                    Text(name)
                        .font(.subheadline)
                        .bold()
                    
                    Text("description")
                        .font(.subheadline)
                    
                    
                }
                
                Spacer()
                
                Image(systemName: "paperplane.circle.fill")
                    .font(.title)
                    .foregroundColor(.blue)
                
            }
            .padding(.horizontal)
            
            
        }
    
}

#Preview {
    UserRowView(name: "TestName")
}
