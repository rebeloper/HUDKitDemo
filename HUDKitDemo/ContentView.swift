//
//  ContentView.swift
//  HUDKitDemo
//
//  Created by Alex Nagy on 25.12.2020.
//

import SwiftUI
import HUDKit

struct ContentView: View {
    
    @StateObject var hudManager = HUDManager()
    
    var body: some View {
        VStack(spacing: 12) {
            Text("HUD Kit Demo").font(.title)
            
            Button("Show HUD") {
                hudManager.show("Working...")
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    hudManager.update("Still working hard...")
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                    hudManager.update("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 7) {
                    hudManager.update("Almost done...")
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 8) {
                    hudManager.hide("Going away 👋")
                }
            }
            
            Spacer()
        }
        .padding()
        .uses(hudManager, options: HUDOptions(hudHorizontalPadding: 32, blurRadius: 1))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
