//
//  PopOverEx1.swift
//  ControlViews
//
//  Created by Macbook Air on 28.05.2021.
//

import SwiftUI

struct PopOverEx1: View {
    @State private var visiblePopOver = false
    var body: some View {
        ZStack{
            Color.black
            Button(action: {self.visiblePopOver = true}, label: {
                Image(systemName: "questionmark.circle.fill").font(.largeTitle).foregroundColor(.white)
            }).popover(isPresented: $visiblePopOver,arrowEdge: .top, content: {
                VStack(spacing:20){
                    Text("Popover Örnek 1 ").font(.largeTitle).foregroundColor(.red)
                    Text("Bool Değişkeninin Değeri Değişti").font(.title).foregroundColor(.gray)
                    Text("Değişken değerini değiştirerek popoverı tetikleyebilirisniz.").frame(maxWidth:.infinity).padding().background(Color.blue).foregroundColor(.white)
                }.frame(height:300)
            })
        }.edgesIgnoringSafeArea(.vertical)
    }
}

struct PopOverEx1_Previews: PreviewProvider {
    static var previews: some View {
        PopOverEx1()
    }
}
