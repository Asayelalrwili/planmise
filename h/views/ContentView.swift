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
                                   // Image(systemName: "plus.rectangle.fill")
                                        
                                    
                                    Text("evaluete your balance")
                                        .accessibilityLabel(Text("evaluete your balance"))
                                }.foregroundColor(Color("Color"))
                                    .padding(15.0)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5.0)
                                            .stroke(lineWidth: 1.0)
                                            .foregroundColor(Color("pink"))
                                        
                                    )
                            }
                        }.padding(.bottom,370)
                        
                               
                                 Text("")
                                    .navigationBarTitle("")
                                    .navigationBarItems(leading:
                                                            Text("Navigation Bar")
                                        .font(.largeTitle)
                                        .bold()
                                                        , trailing:
                                                            Button(action: {
                                        showingsignupscreen = true
                                        
                                    }, label: {
                                        Image(systemName: "plus.circle")
                                    }).foregroundColor(Color("Color"))
                                        .navigationDestination(isPresented: $showingsignupscreen) {
                                         addpromiseView()
                                            
                                            
                                        }

                                    )
                        Text("what to do ?")
                            .font(.title)
                            .padding(.trailing,175)
                            .padding(.top,100)
                            .fontWeight(.bold)
                           Text(" * Go through each category and assess how much attention you're currently devoting to it. * add promises to get much balanced life. *increce balanve value with comitment")
                            .accessibilityLabel(Text(" * Go through each category and assess how much attention you're currently devoting to it. * add promises to get much balanced life. *increce balanve value with comitment"))
                                .multilineTextAlignment(.center)
                                .frame(width: 350)
                                .padding(.top,330)
                                .lineSpacing(23)
                        
                        Image("1")
                            .resizable()
                            .frame(width:1500, height: 900)
                            .padding(.leading,700)
                            .padding(.top,1250)

                    }
                 
        }
    }
    func incrementProgress() {
        let randomValue = Float([0.012, 0.022, 0.034, 0.016, 0.11].randomElement()!)
        self.progressValue += randomValue
    }
}
struct ProgressBar: View {
    @Binding var progress: Float
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20.0)
                .opacity(0.3)
                .foregroundColor(Color("pink"))
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color("pink"))
                .rotationEffect(Angle(degrees: 270.0))
               // .animation(.linear)

            Text(String(format: "%.0f %%", min(self.progress, 1.0)*100.0))
                .font(.largeTitle)
                .bold()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
