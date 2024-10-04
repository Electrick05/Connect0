//
//  Registrationview.swift
//  Connect0
//
//  Created by Rick de Rijk on 04/10/2024.
//

import SwiftUI

struct registrationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmpassword = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Image("logo(nonapp)")
                .resizable()
                .scaledToFill()
                .frame(width: 120.0, height: 120)
                .cornerRadius(30)
            
            //formfields
            VStack(spacing: 24) {
                InputView(Text: $email,
                          title: "Email adress",
                          placeholder: "info@connect.com")
                    .textInputAutocapitalization(.none)
                
                InputView(Text: $fullname,
                          title: "Full Name",
                          placeholder: "Enter your name")
                    
                
                InputView(Text: $password,
                          title: "password",
                          placeholder: "Enter your password",
                          isSecureField: true)
                
                InputView(Text: $confirmpassword,
                          title: "Confirm password",
                          placeholder: "Conform your password",
                          isSecureField: true)
                
                
                
                Button{
                    print("Sign user up")
                } label: {
                    HStack{
                        Text("sign up!")
                            .fontWeight(.semibold)
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 24)
            }
            .padding(.horizontal)
            .padding(.top, 12)
            
            Spacer()
            
            
            Button {
                dismiss()
            } label: {
                HStack{
                    Text("Already a member?")
                    Text("sign in")
                        .fontWeight(.bold)
                    
                }
                .font(.system(size: 14))
            
            }
            
        }
        
    }
}

#Preview {
    registrationView()
}

