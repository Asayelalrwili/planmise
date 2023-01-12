//
//  hApp.swift
//  h
//
//  Created by asayel on 17/06/1444 AH.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for View
 
 
 */

@main
struct hApp: App {
    
   @StateObject var listViewModle: ListViewModle = ListViewModle()
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }
            .environmentObject(listViewModle)
        }
    }
}
