//
//  ActionSheetEx2.swift
//  InsetGradientActionAlertContextSheetPopoverStatusbar
//
//  Created by Macbook Air on 24.05.2021.
//

import SwiftUI

struct ActionSheetEx2: View {
    struct ActionSheetData: Identifiable {
        var id = UUID()
        let title : String
        let message : String
    }
    @State private var datas : ActionSheetData? = nil
    var body: some View {
        VStack(spacing:20){
            Text("Action Sheet Örnek 2").font(.largeTitle)
            Button(action: {self.datas = ActionSheetData(title: "Seçenekler", message: "Lütfen birini seçin.")}, label: {
                Text("Action Sheet Veri Aktarımı")
            }).actionSheet(item: $datas){ message in
                ActionSheet(title: Text(message.title),message: Text(message.message))
                
            }
        }
    }
}

struct ActionSheetEx2_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetEx2()
    }
}
