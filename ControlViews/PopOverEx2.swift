//
//  PopOverEx2.swift
//  ControlViews
//
//  Created by Macbook Air on 28.05.2021.
//

import SwiftUI

struct PopOverEx2: View {
    @State private var visiblePopOver = false
    @State private var username = ""
    var body: some View {
        VStack(spacing:20){
            Text("Popover Örnek 2").font(.largeTitle)
            Text("Popover ArkaPlana renk atama").font(.title).foregroundColor(.gray)
            HStack{
                Text("Kullanıcı Adınız:")
                TextField("Kullanıcı adınızı girin",text:$username).textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    if self.username.count < 5 {
                        self.visiblePopOver = true
                    }
                }, label: {
                    if self.username.count < 5 {
                        Image(systemName: "exclamationmark.triangle.fill").foregroundColor(.yellow).font(.title)
                        
                    }
                }).popover(isPresented: $visiblePopOver, content: {
                    ZStack{
                        Color.orange
                        Text("Kullanıcı adınız en az 5 karakterden oluşmalı.").foregroundColor(.white).font(.title).frame(height:200).padding()
                    }
                })
            }.padding()
            
        }.padding(.top)
    }
}

struct PopOverEx2_Previews: PreviewProvider {
    static var previews: some View {
        PopOverEx2()
    }
}
