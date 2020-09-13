//
//  classes.swift
//  Schedulify
//
//  Created by Ome Asraf on 9/13/20.
//  Copyright © 2020 Ome Asraf. All rights reserved.
//

import SwiftUI

struct classes: View {
    var body: some View {
        NavigationView{
            ScrollView{
                schedule(title:"Intro to C++",date: "10:00 AM - 12:40 PM",icon: "globe",color: Color.red)
                schedule(title:"Java OOP",date: "01:00 PM - 2:40 PM",icon: "pencil",color: Color.green)
                schedule(title:"Intro to XML",date: "03:00 PM - 4:40 PM",icon: "book",color: Color.blue)
                schedule(title:"App Dev with Java",date: "05:00 PM - 7:40 PM",icon: "app",color: Color.yellow)
            }
            .navigationBarTitle("Subjects")
              .navigationBarItems(trailing: Image(systemName: "plus.square"))
        }
  .tabItem {
      Image(systemName: "book.fill")
//      Text("Subjects")
      
  }
    }
}

struct classes_Previews: PreviewProvider {
    static var previews: some View {
        classes()
    }
}
