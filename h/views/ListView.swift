//
//  ListView.swift
//  h
//
//  Created by asayel on 18/06/1444 AH.
//

import SwiftUI
struct ListView: View {
    
    @EnvironmentObject var listViewModle: ListViewModle
    
    
    var body: some View {
        
        
        
        List {
            
            ForEach(listViewModle.items) {item in
                
                ListRowView(item: item)
         
                    .onTapGesture {
                        withAnimation(.linear) {
                            listViewModle.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: listViewModle.deleteItem)
            .onMove(perform: listViewModle.moveItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Promises")
        .foregroundColor(Color("Color"))
        
        .navigationBarItems(
            leading: EditButton()
            ,
            trailing:
                
                NavigationLink("Add", destination: AddView())
                .accessibilityLabel(Text("Add"))
                .accessibilityAddTraits(.isButton)
                .foregroundColor(Color("Color"))
        )
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
        .environmentObject(ListViewModle())
    }
}
   

