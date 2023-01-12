//
//  AddView.swift
//  h
//
//  Created by asayel on 18/06/1444 AH.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModle: ListViewModle
    @State var textFieldText: String = ""
    
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    
    var body: some View {
        ScrollView{
            VStack{
                
                TextField("I will spend extra hour with my family ..", text: $textFieldText)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                    .cornerRadius(13)
                Button (action: saveButtonPressed, label: {
                    Text("save".lowercased())
                        .accessibilityLabel(Text("Save"))
                        .accessibilityAddTraits(.isButton)
                        .foregroundColor(Color("Color"))
                        .bold()
                        .frame(height:55)
                        .frame(maxWidth:250)
                        .background(Color("pink"))
                        .cornerRadius(10)
                    
                })
                
              
                
            }
            .padding(14)
        }
        .navigationTitle("Add a promise📝")
        .accessibilityLabel(Text("Add Promise"))
        
        
        .alert(isPresented: $showAlert, content: getAlert)
        .accessibilityLabel(Text(alertTitle))
        
        
    }
                         
  func saveButtonPressed() {
      if textIsAppropritre() {
          listViewModle.addItem(title: textFieldText)
          presentationMode.wrappedValue.dismiss()
      }
      
                         }
    
    func textIsAppropritre() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "must be 3 at less👳‍♀️"
            
            showAlert.toggle()
            return false
        }
        return true
    }
     
        func getAlert() -> Alert {
            return Alert(title: Text(alertTitle))
        }
        
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
        .environmentObject(ListViewModle())
    }
}
