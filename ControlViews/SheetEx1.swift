//
//  SheetEx1.swift
//  InsetGradientActionAlertContextSheetPopoverStatusbar
//
//  Created by Macbook Air on 27.05.2021.
//

import SwiftUI

struct SheetEx1: View {
    @State private var visibleSheet = false
    var body: some View {
        Button("Ekran Göster"){
            self.visibleSheet = true
        }.sheet(isPresented: $visibleSheet, content: {
            NewScreen(baslik: "Başlık", altBaslik: "Alt Başlık")
        })
    }
}

struct NewScreen: View{
    @Environment(\.presentationMode) var presentation
    let baslik : String
    let altBaslik : String
    var body: some View{
        VStack(spacing:20){
            Spacer()
            Text(baslik).font(.largeTitle).foregroundColor(.red)
            Text(altBaslik).font(.title).foregroundColor(.gray)
            Spacer()
            Button("Geri Dön"){
                self.presentation.wrappedValue.dismiss()
            }.accentColor(.green).font(.title2)
            Spacer()
        }
    }
}
struct SheetEx1_Previews: PreviewProvider {
    static var previews: some View {
        SheetEx1()
    }
}
