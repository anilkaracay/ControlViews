//
//  CustomPopupEx1.swift
//  ControlViews
//
//  Created by Macbook Air on 28.05.2021.
//

import SwiftUI

struct CustomPopupEx1: View {
    @State private var visiblePopup = false
    @State private var username = ""
    @State private var password = ""
    @State var succesfulllogin = false
    var body: some View {
        ZStack{
            VStack(spacing:20){
                Text("Custom Popup Örnek 1").font(.largeTitle)
                Text("Giriş").font(.title).foregroundColor(.gray)
                VStack(spacing:10){
                    HStack{
                        Text("Kullanıcı Adınız:")
                        TextField("Kullanıcı Adı",text:$username).textFieldStyle(RoundedBorderTextFieldStyle()).autocapitalization(.none)
                    }
                    HStack{
                        Text("Parolanız:")
                        SecureField("Parola",text:$password).textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    Button(action: {
                        self.visiblePopup = true
                        if self.username == "anil" && self.password == "1111"{
                            self.succesfulllogin = true
                        } else {
                            self.succesfulllogin = false
                        }
                    }, label: {
                        Text("Giriş Yap").foregroundColor(.green)
                    })
                }.padding()
            }
            if self.visiblePopup {
                ZStack{
                    if self.succesfulllogin == true {
                        Color.green.opacity(0.8).edgesIgnoringSafeArea(.vertical)
                    } else{
                    Color.red.opacity(0.8).edgesIgnoringSafeArea(.vertical)
                }
                    VStack(spacing:20){
                        Text(self.succesfulllogin ? "BAŞARILI" : "HATA").bold().padding().frame(maxWidth:.infinity).background(Color.orange).foregroundColor(.white)
                        Spacer()
                        Text(self.succesfulllogin ? "Giriş yapıldı" : "Başarısız giriş denemesi").foregroundColor(self.succesfulllogin ? .green : .red).bold()
                        Spacer()
                        Button(action: {self.visiblePopup = false}, label: {
                            Text("Kapat")
                        }).padding(.bottom,20)
                    }.frame(width: 300, height: 200, alignment: .center).background(Color.white).cornerRadius(20).shadow(radius: 20)
                }
            }
        }
    }
}

struct CustomPopupEx1_Previews: PreviewProvider {
    static var previews: some View {
        CustomPopupEx1()
    }
}
