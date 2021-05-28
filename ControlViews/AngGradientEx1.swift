//
//  AngGradientEx1.swift
//  InsetGradientActionAlertContextSheetPopoverStatusbar
//
//  Created by Macbook Air on 21.05.2021.
//

import SwiftUI

struct AngGradientEx1: View {
    let angularGradient = AngularGradient(gradient: Gradient(colors: [.pink,.purple,.pink]),center: .center,angle: .degrees(90))
    let notCenter = AngularGradient(gradient: Gradient(colors: [.pink,.purple,.pink]),center: .bottomLeading,angle: .degrees(0))
    var body: some View {
        VStack(spacing:20){
            Text("Angular Gradient Örnek 1").font(.largeTitle)
            Rectangle().fill(angularGradient)
            Rectangle().fill(notCenter)
        }
    }
}

struct AngGradientEx1_Previews: PreviewProvider {
    static var previews: some View {
        AngGradientEx1()
    }
}
