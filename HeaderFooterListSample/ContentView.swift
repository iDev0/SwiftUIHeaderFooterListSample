//
//  ContentView.swift
//  HeaderFooterListSample
//
//  Created by iDev0 on 2020/02/28.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let appleDevices = ["iPhone", "iMac", "iPad", "AppleWatch"]
    let shapes = ["Circle", "Rectangle"]
    
    var body: some View {
        NavigationView {
            List {
                
                Section(header: Text("AppleDeivces")) {
                    ForEach(0 ..< appleDevices.count) {
                        Text(self.appleDevices[$0])
                    }
                }
                
                Section(header:
                    HStack {
                        Image(systemName: "shapes")
                        Text("shapes")
                    }
                    , footer: Text("난 푸터다").font(.footnote)) {
                        ForEach(0 ..< shapes.count) {
                            Text(self.shapes[$0])
                        }
                    }
            }.navigationBarTitle("아무거나 목록")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
