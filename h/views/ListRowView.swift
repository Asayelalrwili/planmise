//
//  ListRowView.swift
//  h
//
//  Created by asayel on 18/06/1444 AH.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    
    var body: some View {
        HStack {
            Image (systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? Color("pink") : Color("Color"))
            Text(item.title)
            Spacer()
            
        }
        .font(.title3)
        .padding(.vertical, 8)
        
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "first item!", isComplted: false)
    static var item2 = ItemModel(title: "seconed item!", isComplted: true)
    
    static var previews: some View {
        Group {
            
            ListRowView(item: item1)
            ListRowView(item: item2)
                
        }
        .previewLayout(.sizeThatFits)
    }
}
