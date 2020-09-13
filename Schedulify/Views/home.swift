//
//  home.swift
//  Schedulify
//
//  Created by Ome Asraf on 9/13/20.
//  Copyright © 2020 Ome Asraf. All rights reserved.
//

import SwiftUI

struct home: View {
    @State private var schedules:[schedule] = [
        schedule(title: "Meet Client", date: "10:00 AM - 11:00 AM",icon:"doc.fill",color: Color.red),
        schedule(title: "Walk Dog", date: "11:30 AM - 12:00 PM",icon:"hare.fill",color: Color.blue),
        schedule(title: "Video call with client", date: "12:30 PM - 2:00 PM",icon:"camera", color: Color.gray),
        schedule(title: "Call Julie", date: "2:30 PM - 3:00 PM",icon:"phone", color: Color.green),
        schedule(title: "Meet Client", date: "4:30 PM - 5:00 PM",icon:"doc.fill",color: Color.yellow)
    ]
    //    @State private var scrollViewID = UUID()
    @State private var storeTitle = ""
    @State private var storeDate = ""
    @State private var storeIcon = ""
    @State var bgColor = Color.red
    @State var isShown = false
    var colors = [Color.red,Color.green,Color.blue,Color.yellow,Color.gray]
    var body: some View {
        
        NavigationView{
            
            ScrollView(){
                
                
                ForEach(0..<self.schedules.count,id: \.self){ sche in
                    self.schedules[sche]
                }
                
                
                
            }
                //            .id(self.scrollViewID)
                .navigationBarTitle("Schedulify")
                .navigationBarItems(trailing: Button(action: {
                    self.isShown.toggle()
                }) {
                    Image(systemName: "plus.square")
                }.sheet(isPresented: $isShown){
                    VStack(alignment:.leading) {
                        VStack(alignment:.leading) {
                            TextField("Enter Title", text:self.$storeTitle)
                                .padding()
                                .background(Color.red.opacity(0.8))
                                .cornerRadius(5, antialiased: true)
                                .foregroundColor(Color.white)
                                .accentColor(Color.blue)
                            TextField("Enter Date", text:self.$storeDate)
                                .padding()
                                .background(Color.green.opacity(0.8))
                                .cornerRadius(5, antialiased: true)
                                .foregroundColor(Color.white)
                                .accentColor(Color.blue)
                            TextField("Enter Icon", text:self.$storeIcon)
                                .padding()
                                .background(Color.blue.opacity(0.8))
                                .cornerRadius(5, antialiased: true)
                                .foregroundColor(Color.white)
                                .accentColor(Color.blue)
                            
                            
                            
                            Text("Add To List").onTapGesture {
                                let newSchedule = schedule(title:self.storeTitle,date: self.storeDate,icon: self.storeIcon.lowercased(),color: self.colors[Int.random(in: 0..<self.colors.count)])
                                self.schedules.insert(newSchedule, at: 0)
                                self.isShown.toggle()
                            }
                            .padding()
                            .background(Color.red)
                            .cornerRadius(5, antialiased: true)
                            .foregroundColor(Color.white)
                            
                            
                        }.padding()
                        .background(Color.yellow.opacity(0.5))
                        .cornerRadius(5, antialiased: true)
                            .padding()
                    }
                    
                }.background(Color.yellow)
            )
        }
        .tabItem {
            Image(systemName: "calendar")
            //            Text("Home")
            
        }
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
