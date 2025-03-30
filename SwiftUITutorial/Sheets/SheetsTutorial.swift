//
//  SheetsTutorial.swift
//  SwiftUITutorial
//
//  Created by Admin on 3/18/25.
//

import SwiftUI

struct Contact : Identifiable
{
    var id = NSUUID().uuidString
    let name : String
}

struct SheetsTutorial: View {
    @State private var showSheet = false
    @State private var showInteractiveSheet = false
    @State private var showFullCover = false
    @State private var showSheetWithActiveBackground = false
    
    
    @State private var selectedContact : Contact?
    let contacts = [
    Contact(name: "soheil"),
    Contact(name: "Sina"),
    Contact(name: "Sahar")
    ]
    
    var body: some View {
        VStack{
            Button("Show sheet")
            {
                showSheet.toggle()
            }
            
            Button("Show interactive sheet")
            {
                showInteractiveSheet.toggle()
            }
            
            Button("Show sheet with active background")
            {
                showSheetWithActiveBackground.toggle()
            }
            
            Button("Show full cover")
            {
                showFullCover.toggle()
            }
            
            List{
                ForEach(contacts) { contact in
                    /*@START_MENU_TOKEN@*/Text(contact.name)/*@END_MENU_TOKEN@*/
                        .onTapGesture {
                           selectedContact = contact
                        }
                }
            }
        }
        //normal sheet
        .sheet(isPresented: $showSheet, content: {
            Spacer()
                .frame(height: 0)
                .presentationDetents([.height(300),.medium,.large])
            ZStack{
                Rectangle()
                    .fill(.red)
                Text("Sheet 1")
            }
            .ignoresSafeArea()
        })
        //sheet with active background
        .sheet(isPresented: $showSheetWithActiveBackground, content: {
            Spacer()
                .frame(height: 0)
                .presentationDetents([.height(300),.height(400)])
                .presentationBackgroundInteraction(.enabled(upThrough: .height(300)))
            ZStack{
                Rectangle()
                    .fill(.red)
                Text("Sheet with active background")
            }
            .ignoresSafeArea()
        })
        //sheet without cancalable
        .sheet(isPresented: $showInteractiveSheet, content: {
            Spacer()
                .frame(height: 0)
                .presentationDetents([.height(300),.medium,.large]) // size
                .interactiveDismissDisabled() // can't close
            ZStack{
                Rectangle()
                    .fill(.red)
                VStack {
                    Text("Interactive sheet")
                    Button("Close"){
                        showInteractiveSheet.toggle()
                    }
                }
            }
            .ignoresSafeArea()
        })
        //full screen cover
        .fullScreenCover(isPresented: $showFullCover , content: {
            ZStack{
                Rectangle()
                    .fill(.green)
                VStack{
                    Text("Sheet 2")
                    Button("Close"){
                        showFullCover.toggle()
                    }
                }
            }
        })
        //show sheet with data
        .sheet(item: $selectedContact, content: {contact in
            Text(contact.name)
            Button("Close"){
                selectedContact = nil
            }
        })
        .padding()
    }
}

#Preview {
    SheetsTutorial()
}
