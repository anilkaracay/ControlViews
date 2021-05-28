//
//  AlertEx3.swift
//  InsetGradientActionAlertContextSheetPopoverStatusbar
//
//  Created by Macbook Air on 25.05.2021.
//

import SwiftUI

struct AlertEx3: View {
    @State private var visibleAlert = false
    @State private var name = ""
    var body: some View {
        VStack(spacing:20){
            Text("Alert Örnek 3").font(.largeTitle)
            Text("Alert Buton Seçenekleri").font(.title).foregroundColor(.gray)
            Button("Alert Tipleri"){
                self.visibleAlert = true
            }
        }.alert(isPresented: $visibleAlert, content: {
            //Alert(title: Text("Oturumunuz Sonlandırıldı"))
            //Alert(title: Text("Başlık"), message: Text("alert mesajı"), dismissButton: .cancel())
            //Alert(title: Text("Onay"), message: Text("Devam etmek istiyor musunuz?"), primaryButton: .default(Text("Devam et")), secondaryButton: .cancel(Text("İptal")))
            Alert(title: Text("Silme işlemi"), message: Text("Hesabınızı silmek istediğinize emin misiniz?"), primaryButton: .destructive(Text("sil"),action: {}), secondaryButton: .cancel(Text("İptal")))
            
        })
    }
}

struct AlertEx3_Previews: PreviewProvider {
    static var previews: some View {
        AlertEx3()
    }
}


