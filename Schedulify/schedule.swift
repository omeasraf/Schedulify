//
//  schedule.swift
//  Schedulify
//
//  Created by Ome Asraf on 9/12/20.
//  Copyright © 2020 Ome Asraf. All rights reserved.
//

import SwiftUI



struct schedule: View {
    
    
    
    
    var cardColor:Color = Color.red;
    var title:String = ""
    var date:String = ""
    var icon:String = "doc.fill"
    init(title: String, date:String,icon:String, color: Color) {
        self.title = title
        self.date = date
        self.icon = icon
        self.cardColor =  color
    }
    var body: some View {
        HStack(spacing:0){
            Rectangle()
      
                .fill(self.cardColor)
                
                .frame(width: 6)
            .cornerRadius(20, corners: [.topLeft, .bottomLeft])
                
                
            
            
            VStack(alignment: .leading){
                Spacer()
                    .frame(height:10)
                
                HStack{
                    VStack(alignment:.leading){
                        Text(self.title)
                            .fontWeight(.medium)
                        
                        Spacer()
                            .frame(height:3)
                        Text(self.date)
                            .fontWeight(.light)
                            .font(.system(size: 10))
                            .foregroundColor(Color.black.opacity(0.7))
                    }
                    Spacer()
                    Image(systemName: self.icon)
                    .font(.system(size: 20.0))
                        .foregroundColor(self.cardColor)
                }
                HStack(alignment: .top, spacing: -120, content: {
                    Spacer()
                        .frame(width:50)
                    ForEach(1..<4) { _ in
                        Circle()
                            .strokeBorder(Color.white,lineWidth: 1)
                            .background(Circle().foregroundColor(self.cardColor))
                            .frame(height:30)
                            
                    }
                    Spacer()
                        .frame(width:250)
                                          
                    
                    
                    
                }).padding(.horizontal, 10)
                    
                Spacer()
                    .frame(height:10)
            }
                
            .padding(.all,20)
            .background(self.cardColor.opacity(0.3))
            .cornerRadius(3, corners: [.topRight, .bottomRight])
            
        }.padding(.horizontal,10)
            .padding(.vertical,5)
    }
}

struct schedule_Previews: PreviewProvider {
    static var previews: some View {
        schedule(title: "Hello World",date:"date",icon:"doc.fill", color: Color.red)
    }
}
