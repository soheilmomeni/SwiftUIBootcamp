//
//  ControlFlowTutorial.swift
//  SwiftUITutorial
//
//  Created by Admin on 3/12/25.
//

import SwiftUI

struct ControlFlowTutorial: View {
    @State var darkModeEnabled : Bool = false
    @State var notificationEnabled : Bool = false
    @State var faceIDEnabled : Bool = false
    
    var backgroundColor : Color {
        return darkModeEnabled ? .black : .white
    }
    var foregroundColor : Color {
        return darkModeEnabled ? .white : .black
    }
    var rowBackgroundColor : Color {
        return darkModeEnabled ? .white.opacity(0.1) : Color(.systemGroupedBackground)
    }
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(foregroundColor)
                .padding()
            
            VStack(alignment:.leading){
                Text("Appearance")
                    .font(.headline)
                    .foregroundStyle(foregroundColor)
                
                Toggle(isOn: $darkModeEnabled){
                    
                    HStack{
                        Image(systemName: "moon.circle.fill")
                            .font(.title2)
                            .imageScale(.medium)
                            .foregroundStyle(.blue)
                        
                        Text("Enable Dark Mode")
                            .font(.subheadline)
                            .foregroundStyle(foregroundColor)
                    }
                }
                .padding(.horizontal)
                .frame(height: 44)
                .background(rowBackgroundColor)
                .cornerRadius(10)
                .toggleStyle(SwitchToggleStyle(tint: .blue))
            }
            .padding()
            
            
            VStack(alignment: .leading){
                Text("Account")
                    .font(.headline)
                    .foregroundStyle(foregroundColor)
                
                VStack{
                    Toggle(isOn: $notificationEnabled){
                        
                        HStack{
                            Image(systemName: "bell.circle.fill")
                                .font(.title2)
                                .imageScale(.medium)
                                .foregroundStyle(.blue)
                            
                            VStack(alignment: .leading){
                                Text("Notifications")
                                    .font(.subheadline)
                                    .foregroundStyle(foregroundColor)
                                
                                if (notificationEnabled)
                                {
                                    Text("Push notifications enabled")
                                        .font(.caption)
                                        .foregroundStyle(.gray)
                                }
                            }
                            
                        }
                        
                        
                    }
                    .padding(.horizontal)
                    .frame(height: 44)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                    
                    Divider()
                    
                    Toggle(isOn: $faceIDEnabled){
                        
                        HStack{
                            Image(systemName: "faceid")
                                .font(.title2)
                                .imageScale(.medium)
                                .foregroundStyle(.blue)
                            
                            Text("Enable Face ID")
                                .font(.subheadline)
                                .foregroundStyle(foregroundColor)
                        }
                    }
                    .padding(.horizontal)
                    .frame(height: 44)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                    
                }
                .background(rowBackgroundColor)
                .cornerRadius(10)
                
            }
            .padding()
            
            Spacer()
        }
        .background(backgroundColor)
    }
}

#Preview {
    ControlFlowTutorial()
}
