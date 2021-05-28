//
//  StatusBarEx1.swift
//  ControlViews
//
//  Created by Macbook Air on 28.05.2021.
//

import SwiftUI

struct StatusBarEx1: View {
    @State private var open = true
    var body: some View {
        ZStack{
            Color.black
            VStack(spacing:20){
                Text("Status bar gizleme").font(.largeTitle)
                Text("Giriş").foregroundColor(.gray)
                Toggle(isOn: $open, label: {
                    Text("Status Bar") + Text(open ? " Göster" : " Gizle").bold().foregroundColor(.red)
                    Image(systemName: open ? "eye" : "eye.slash")
                }).padding()
            }.foregroundColor(.white).font(.title).statusBar(hidden: open)
        }
    }
}

struct StatusBarEx1_Previews: PreviewProvider {
    static var previews: some View {
        StatusBarEx1()
    }
}
