//
//  InsetEx1.swift
//  InsetGradientActionAlertContextSheetPopoverStatusbar
//
//  Created by Macbook Air on 21.05.2021.
//

import SwiftUI

struct InsetEx1: View {
    @State private var amountInset : CGFloat = 45
    var body: some View {
        VStack(spacing:20){
            Text("Inset Örnek -1").font(.largeTitle)
            Text("Inset 20")
            Circle().inset(by: 20).frame(width:200).border(Color.purple)
            Circle().padding(20).frame(width:200).border(Color.purple)
            Rectangle().inset(by: amountInset).fill(Color.purple).frame(width:300,height: 200).border(Color.purple)
            HStack{
                Text("0")
                Slider(value: $amountInset, in:0...95)
                Text("95")
            }.padding(.horizontal)
        }
    }
}

struct InsetEx1_Previews: PreviewProvider {
    static var previews: some View {
        InsetEx1()
    }
}
