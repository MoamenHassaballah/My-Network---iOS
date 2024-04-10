//
//  LettersScrollBar.swift
//  My Network
//
//  Created by Moamen Hassaballah on 11/04/2024.
//

import SwiftUI

struct LettersScrollBar: View {
    
    var sectionsList: [String] = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ").map { String($0) }
    
    var onSectionSelected: (_ section: String) -> Void
    
    var body: some View {
        VStack(spacing: 5){
            ForEach(sectionsList, id: \.self){letter in
                
                Button(action: {
                    onSectionSelected(letter)
                }, label: {
                    Text(letter)
                        .font(.caption2)
                })
                
            }
        }
        .padding(2)
        .background{
            RoundedRectangle(cornerRadius: 50)
                .opacity(0.2)
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        
    }
}

#Preview {
    LettersScrollBar(onSectionSelected: {_ in})
}
