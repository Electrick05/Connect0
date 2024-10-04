//
//  inoutView.swift
//  Connect0
//
//  Created by Rick de Rijk on 04/10/2024.
//

import SwiftUI

struct InputView: View {
    @Binding var Text: String
    let title: String
    let placeholder: String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            SwiftUICore.Text(title)
                .foregroundColor((.color))
                .fontWeight((.semibold))
                .font(.footnote)
                
            if isSecureField {
                SecureField(placeholder, text: $Text)
                    .font(.system(size: 14))
            } else {
                TextField(placeholder, text: $Text)
                    .font(.system(size: 14))
            }
            
            Divider()
        }
    }
    
    
    struct InputView_previews: PreviewProvider {
        static var previews: some View {
            InputView(Text: .constant(""), title: "Email adress", placeholder: "info@connect.com")
        }
    }
}





