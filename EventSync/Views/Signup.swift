//
//  Signup.swift
//  EventSync
//
//  Created by GreatNeel on 2/5/24.
//

import SwiftUI

struct Signup: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var email: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Sign Up")
                    .font(.system(size:25, weight: .bold))
                
                HStack {
                    Text("Already have an account?")
                        .font(.system(size:15, weight: .semibold))
                        .foregroundColor(.gray400)
                    
                    NavigationLink {
                        Login()
                    } label: {
                        Text("Login")
                            .underline()
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundColor(.blue500)
                    }
                }
                
                Spacer()
                
                HStack {
                    Image("atSymbol")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(colorScheme == .dark ? .gray500 : .gray300)
                        .padding()
                    TextField(text: $email){
                        Text("Email")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.gray400)
                    }
                    
                }
                .cornerRadius(10.0)
                .background(RoundedRectangle(cornerRadius: 8)
                    .fill(colorScheme == .dark ? .gray900 : .gray100)
                    
                )
               
                Spacer()
                
                HStack {
                    Image("userCircle")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(colorScheme == .dark ? .gray500 : .gray300)
                        .padding()
                    TextField(text: $username){
                        Text("Username")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.gray400)
                    }
                    
                }
                .cornerRadius(10.0)
                .background(RoundedRectangle(cornerRadius: 8)
                    .fill(colorScheme == .dark ? .gray900 : .gray100)
                    
                )
                
                Spacer()
                
                HStack {
                    Image("lockClosed")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(colorScheme == .dark ? .gray500 : .gray300)
                        .padding()
                    TextField(text: $password){
                        Text("Password")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.gray400)
                    }
                    
                }
                .cornerRadius(10.0)
                .background(RoundedRectangle(cornerRadius: 8)
                    .fill(colorScheme == .dark ? .gray900 : .gray100)
                    
                )
        
                Spacer()
                
                HStack {
                    Image("lockClosed")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(colorScheme == .dark ? .gray500 : .gray300)
                        .padding()
                    TextField(text: $confirmPassword){
                        Text("Confirm Password")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.gray400)
                    }
                    
                }
                .cornerRadius(10.0)
                .background(RoundedRectangle(cornerRadius: 8)
                    .fill(colorScheme == .dark ? .gray900 : .gray100)
                    
                )
                
                Spacer()
                
                Button(action: signup){
                    Text("Sign Up")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.gray100)
                    
                }
                .cornerRadius(10.0)
                .frame(width: 290, height: 25)
                .padding()
                .background(RoundedRectangle(cornerRadius: 8)
                    .fill(.blue600)
                    
                )
                
                
            }
            .frame(width: 320, height: 370)
            .padding()
        }
    }
}

func signup(){
    return
}


#Preview {
    Signup()
}
