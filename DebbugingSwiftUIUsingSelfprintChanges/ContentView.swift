//
//  ContentView.swift
//  DebbugingSwiftUIUsingSelfprintChanges
//
//  Created by ramil on 29.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isOn: Bool = false
    
    var body: some View {
        
        let _ = Self._printChanges()
        
        VStack {
            Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
                .font(.system(size: 50))
            
            Toggle(isOn: $isOn) {
                EmptyView()
            }.fixedSize()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
