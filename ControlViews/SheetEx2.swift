//
//  SheetEx2.swift
//  InsetGradientActionAlertContextSheetPopoverStatusbar
//
//  Created by Macbook Air on 27.05.2021.
//

import SwiftUI

struct DetailDatas : Identifiable{
    var id = UUID()
    var image : Image? = nil
    let message : String
}

struct SheetEx2: View {
    @State private var visibleAlert = false
    var messageAlert = Alert(title: Text("Mesaj giriniz."))
    @State private var detail : DetailDatas? = nil
    @State private var txtMessage = ""
    var body: some View {
        VStack(spacing:20){
            Text("Sheet Örnek 2").font(.largeTitle)
            HStack{
                Text("Mesajınız:")
                TextField("Mesajınız",text:$txtMessage).autocapitalization(.none)
            }.padding().font(.title2)
            Button("Gönder"){
                if self.txtMessage == nil || self.txtMessage == "" {
                    self.visibleAlert = true
                } else {
                    self.detail = DetailDatas(image: Image("anil").resizable(), message: self.txtMessage)
                }
                
            }.padding(.horizontal).accentColor(.green).font(.largeTitle).sheet(item: $detail, content: { detail in
                DetailScreen(details: detail)
                
            })
        }.alert(isPresented: $visibleAlert, content: {
            self.messageAlert
        })
    }
}
struct DetailScreen : View{
    @Environment(\.presentationMode) var presentation
    let details : DetailDatas
    var body: some View{
        VStack(spacing:20){
            Text("Gönderilen Mesaj: ") + Text("\(details.message)").bold().foregroundColor(.red)
            details.image
            Spacer()
            Button("Geri Dön"){
                self.presentation.wrappedValue.dismiss()
            }.accentColor(.red).font(.title)
            
        }.padding(40)
    }
}

struct SheetEx2_Previews: PreviewProvider {
    static var previews: some View {
        SheetEx2()
    }
}
