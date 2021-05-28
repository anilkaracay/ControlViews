//
//  ContextEx1.swift
//  InsetGradientActionAlertContextSheetPopoverStatusbar
//
//  Created by Macbook Air on 25.05.2021.
//

import SwiftUI

struct ContextEx1: View {
    @State private var image: Image? = nil
    private var imageOption = ContextMenu{
        Button(action: {}, label: {
            Text("Değiştir")
            Image(systemName: "square.on.square")
        })
        Button(action: {}, label: {
            Text("Paylaş")
            Image(systemName: "square.and.arrow.up")
        })
    }
    var body: some View {
        VStack(spacing:20){
            Text("Context Menu Örnek").font(.largeTitle)
            HStack{
                Text("Yardıma ihtiyacım var.")
                Spacer()
                Image(systemName: "questionmark.diamond.fill").font(.title).foregroundColor(.orange).frame(width:45,height: 45).contextMenu(ContextMenu(menuItems: {
                    Button(action: {}, label: {
                        Text("Renk Seçimi")
                        Image(systemName: "eyedropper.full")
                    })
                    Button(action: {}, label: {
                        Image(systemName: "circle.lefthalf.fill")
                        Text("Renk Değişimi")
                    })
                }))
            }
            
            Button(action: {self.image = Image("raze").resizable()}, label: {
                Text(image == nil ? "Görüntü Seç" : "Düzenle (Uzun Bas)" ).foregroundColor(image == nil ? .blue : .red).frame(width:200,height: 200).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray,style: StrokeStyle(lineWidth:4, dash: [10,10]))).background(image == nil ? nil : image)
            }).contextMenu(image == nil ? nil : imageOption)
            
            
        }.padding()
    }
}

struct ContextEx1_Previews: PreviewProvider {
    static var previews: some View {
        ContextEx1()
    }
}
