//
//  AlertEx1.swift
//  InsetGradientActionAlertContextSheetPopoverStatusbar
//
//  Created by Macbook Air on 24.05.2021.
//

import SwiftUI

struct AlertEx1: View {
    @State private var visibleAlert = false
    var messageAlert = Alert(title: Text("Başlık"), message: Text("Alert Mesajı"), primaryButton: .default(Text("Sol Buton"),action: {
        
    }), secondaryButton: .destructive(Text("Sağ Buton"),action: {
        
    }))
    @State private var txtAge = ""
    var body: some View {
        VStack(spacing:20){
            Text("Alert Örnek 1").font(.largeTitle)
            VStack{
                HStack{
                    Text("Yaşınız: ")
                    TextField("Yaşınızı girin",text:$txtAge)
                }.padding(.horizontal)
                Button(action: {
                    if Int(self.txtAge)! > 18{
                        self.visibleAlert = true
                    }
                }, label: {
                    Text("Kaydet")
                })
                Spacer()
            }.alert(isPresented: $visibleAlert, content: {
                self.messageAlert
            })
        }
    }
}

struct AlertEx1_Previews: PreviewProvider {
    static var previews: some View {
        AlertEx1()
    }
}
