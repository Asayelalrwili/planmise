//
//  ContentView.swift
//  h
//
//  Created by asayel on 17/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var progressValue: Float = 0.0
    @State var note: String = ""
    @State var showingsignupscreen = false
    @State var itemName = ""
    @State var items = [String]()
    @State var progress: Double = 0
    
    @EnvironmentObject var listViewModle: ListViewModle
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                
                VStack {
                    
                    ProgressBar(progress: self.$progressValue)
                        .frame(width: 150.0, height: 150.0)
                        .padding(40.0)
                    
                    Button(action: {
                        self.incrementProgress()
                    }) {
                        HStack {
                             Image(systemName: "plus.rectangle.fill")
                            
                            
                            Text("Add balance")
                                .accessibilityLabel(Text("Add balance"))
                                .accessibilityAddTraits(.isButton)
                        }.foregroundColor(Color("Color"))
                        
                    }
                    
                }.padding(.bottom,370)
                

                
                Button(action: {
showingsignupscreen = true

}, label: {
Image(systemName: "plus.circle")
    Text("Add promise")
        .accessibilityLabel(Text("Add promise"))
        .accessibilityAddTraits(.isButton)
}).foregroundColor(Color("Color"))
                
                    
.navigationDestination(isPresented:
        $showingsignupscreen) {
ListView()
                    }
                Button("Reset") {
                    resetProgress()
                }.foregroundColor(Color("Color"))
                    .accessibilityLabel(Text("Reset"))
                    .accessibilityAddTraits(.isButton)
                    .padding(.top,100)
                Image("1")
                    .resizable()
                    .frame(width:1500, height: 900)
                    .padding(.leading,700)
                    .padding(.top,1250)
            }.navigationTitle("Planmises")
        }
    }
    func resetProgress() {
            progressValue = 0
        
        }
    
    func incrementProgress() {
        let randomValue = Float([0.012, 0.022, 0.034, 0.016, 0.11].randomElement()!)
        self.progressValue += randomValue
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
