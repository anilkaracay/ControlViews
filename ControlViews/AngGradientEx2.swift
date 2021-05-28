//
//  AngGradientEx2.swift
//  InsetGradientActionAlertContextSheetPopoverStatusbar
//
//  Created by Macbook Air on 21.05.2021.
//

import SwiftUI

struct AngGradientEx2: View {
    let angularGradient = AngularGradient(gradient: Gradient(colors: [.yellow,.green,.yellow]), center: .center, angle: .degrees(0))
    var body: some View {
        VStack(spacing:20){
            Text("Angular Gradient Örnek 2").font(.largeTitle)
            HStack{
                Circle().fill(angularGradient)
                Ellipse().fill(angularGradient)
                Capsule().fill(angularGradient)
            }.padding(.horizontal).frame(height:200)
            HStack{
                Circle().stroke(angularGradient,lineWidth: 15).padding(.horizontal,5)
                Ellipse().strokeBorder(angularGradient,lineWidth: 15).padding(.horizontal,5)
                Capsule().trim(from: 0.25, to: 1.0).stroke(angularGradient,style: StrokeStyle(lineWidth:15,lineCap: .round)).padding(.horizontal,5)
            }.padding(.horizontal).frame(height:200)
            Button(action: {}, label: {
                Text("Gradient Arka planda").foregroundColor(.white).padding()
            }).padding().background(Capsule().fill(angularGradient))
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Gradient Kenarlık").foregroundColor(.blue).bold().padding()
            }).background(Capsule().stroke(angularGradient,lineWidth: 5)).padding(.horizontal)
        }
    }
}

struct AngGradientEx2_Previews: PreviewProvider {
    static var previews: some View {
        AngGradientEx2()
    }
}
