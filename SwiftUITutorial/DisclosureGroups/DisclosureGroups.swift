//
//  SwiftUIView.swift
//  SwiftUITutorial
//
//  Created by Admin on 3/18/25.
//

import SwiftUI

struct DisclosureGroups: View {
    @State private var isExpanded = false
    var body: some View {
        VStack(spacing: 16){
            
            VStack{
                Text("Disclosure Groups")
                    .font(.title)
                Text("Items")
                    .font(.subheadline)
            }
            
            VStack {
                //default
                DisclosureGroup("How to login?") {
                    Text("spam text for this disclosure group. This is a sample text and it's free to use")
                }
                DisclosureGroup("How to login? ***") {
                    Text("spam text for this disclosure group. This is a sample text and it's free to use")
                }
                
                
                //custom
                DisclosureGroup(
                    content: { /*@START_MENU_TOKEN@*/Text("Content")/*@END_MENU_TOKEN@*/ },
                    label: { /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/ }
                )
                
                
                //custom2
                DisclosureGroup(
                    content: {
                        VStack{
                            Image(systemName: "paperplane.circle.fill")
                            Text(" Paperline ")
                        }
                    },
                    label: {
                        HStack{
                            Image(systemName: "paperplane.circle.fill")
                            Text(" Paperline ")
                        }
                        .foregroundStyle(.blue)
                    }
                )
                
                
                //custom style & custom expanded
                DisclosureGroup(isExpanded ? "Expanded" : "Collapsed", isExpanded: $isExpanded) {
                    Text("Custom Item View Detail")
                }
            }
            .foregroundStyle(.primary)
            .padding()
            
        }
    }
}

#Preview {
    DisclosureGroups()
}
