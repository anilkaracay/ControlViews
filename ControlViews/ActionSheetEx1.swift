//
//  ActionSheetEx1.swift
//  InsetGradientActionAlertContextSheetPopoverStatusbar
//
//  Created by Macbook Air on 21.05.2021.
//

import SwiftUI

struct ActionSheetEx1: View {
    @State private var visibleActionSheet: Bool = false
    var sheetAction = ActionSheet(
        title: Text("Action Sheet"),
        message: Text("Mesaj"),
        buttons: [
            .default(Text("Varsayılan Buton"),action: {}),
            .destructive(Text("Destructive Buton"),action: {}),
            .cancel(Text("Cancel Buton"),action: {})
        ])
    
    var body: some View {
        VStack(spacing:20){
            Text("Action Sheet Örnek 1").font(.largeTitle)
            Button(action: {self.visibleActionSheet = true},label: {
                Text("Action Sheet")
            }).actionSheet(isPresented: $visibleActionSheet, content: {
                self.sheetAction
            })
            Spacer()
        }
    }
}

struct ActionSheetEx1_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetEx1()
    }
}
