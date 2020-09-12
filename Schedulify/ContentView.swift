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
         
        NavigationView{
            ScrollView(){
               
                schedule(title: "Meet Client", date: "10:00 AM - 11:00 AM",icon:"doc.fill")
                schedule(title: "Walk Dog", date: "11:30 AM - 12:00 PM",icon:"hare.fill")
                schedule(title: "Video call with client", date: "12:30 PM - 2:00 PM",icon:"camera")
                schedule(title: "Call Julie", date: "2:30 PM - 3:00 PM",icon:"phone")
                schedule(title: "Meet Client", date: "4:30 PM - 5:00 PM",icon:"doc.fill")
            }
            .navigationBarTitle("Schedulify")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone X"))
    }
}
