//
//  progressBar.swift
//  h
//
//  Created by asayel on 19/06/1444 AH.
//

import SwiftUI



struct ProgressBar: View {
    @Binding var progress: Float
    @State var progressValue: Float = 0.0
    
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
            
            
            Text(String(format: "%.0f %%", min(self.progress, 1.0)*100.0))
                .font(.largeTitle)
                .bold()
        }
    }
}

