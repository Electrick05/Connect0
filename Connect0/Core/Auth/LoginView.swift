//
//  LoginView.swift
//  Connect0
//
//  Created by Rick de Rijk on 04/10/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            VStack{
                //image
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
                    
                    InputView(Text: $password,
                              title: "password",
                              placeholder: "Enter your password",
                              isSecureField: true)
                    
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                // sign in button
                
                Button{
                    print("log user in.")
                } label: {
                    HStack{
                        Text("sign in")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 24)
                
                
                    
                Spacer()
                
                
                //sign up button
                NavigationLink {
                    registrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack{
                        Text("Not an member yet?")
                        Text("sign up")
                            .fontWeight(.bold)
                            
                        }
                    .font(.system(size: 14))
                }
                
            }
        }
    }
    
    
   
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
}
#Preview {
    LoginView()
}

