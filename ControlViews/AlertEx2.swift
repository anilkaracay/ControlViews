//
//  AlertEx2.swift
//  InsetGradientActionAlertContextSheetPopoverStatusbar
//
//  Created by Macbook Air on 24.05.2021.
//

import SwiftUI

struct AlertEx2: View {
    struct AlertData : Identifiable{
        var id = UUID()
        let title : String
        let message : String
    }
    @State private var alertData : AlertData? = nil
    @State private var txtName = ""
    @State private var txtResult = ""
    
    let n1 = Int.random(in: 1...5)
    let n2 = Int.random(in: 1...5)
    var body: some View {
        VStack(spacing:20){
            HStack{
                Text("Adınız:")
                TextField("Adınızı Giriniz",text:$txtName)
                Image("ambulance")
            }
            HStack{
                Text(String(n1))
                Image(systemName: "plus")
                Text(String(n2))
                Image(systemName: "equal")
                TextField("Sonuç",text:$txtResult)
            }.font(.title)
            Button("Giriş Yap"){
                if Int(self.txtResult) == (self.n1 + self.n2){
                    self.alertData = AlertData(title: "Süper", message: "Merhaba \(self.txtName)")
                } else {
                    self.alertData = AlertData(title: "Üzgünüm", message: "Merhaba \(self.txtName). Yanlış Giriş Yaptınız.")
                }
            }.padding().foregroundColor(.green).font(.system(size: 25)).alert(item:$alertData){ a in
                Alert(title: Text(a.title),message: Text(a.message))
            }
            
        }.padding()
    }
}

struct AlertEx2_Previews: PreviewProvider {
    static var previews: some View {
        AlertEx2()
    }
}
