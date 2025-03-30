//
//  SheetsConfigTutorial.swift
//  SwiftUITutorial
//
//  Created by Admin on 3/18/25.
//

import SwiftUI

enum SheetConfig : Int,Identifiable {
    case sheet1
    case sheet2
    case sheet3
    
    var id : Int {return self.rawValue}
}
struct SheetsConfigTutorial: View {
    
    @State private var sheetConfig : SheetConfig?
    
    var body: some View {
        VStack{
            Button("Click Me 1")
            {
                sheetConfig = .sheet1
            }
            
            Button("Click Me 2")
            {
                sheetConfig = .sheet2
            }
            
            Button("Click Me 3")
            {
                sheetConfig = .sheet3
            }
        }
        .sheet(item: $sheetConfig, content: { config in
            
            switch config {
            case .sheet1:
                Text("sheet 1")
                    .presentationDetents([.height(200)])
            case .sheet2:
                Text("sheet 2")
                    .presentationDetents([.medium])

            case .sheet3:
                Text("sheet 3")
                    .presentationDetents([.large])
            
            }
            
        })
    }
}

#Preview {
    SheetsConfigTutorial()
}
