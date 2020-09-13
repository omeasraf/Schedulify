//
//  ContentView.swift
//  Schedulify
//
//  Created by Ome Asraf on 9/12/20.
//  Copyright © 2020 Ome Asraf. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        TabView {
            home()
            classes()
        }
        
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone X"))
    }
}
