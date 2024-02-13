//
//  CreateMeetup.swift
//  EventSync
//
//  Created by GreatNeel on 2/5/24.
//

import SwiftUI

struct CreateMeetup: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var name: String = ""
    var body: some View {
        NavigationStack {
            ZStack {
                (colorScheme == .dark ? Color.black : Color.gray100)
                    .ignoresSafeArea()
                
                VStack {
                    Text("What's your meetup called?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                    HStack {
                        Image("lockClosed")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(colorScheme == .dark ? .gray500 : .gray300)
                            .padding()
                        TextField(text: $name){
                            Text("Name")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundColor(.gray400)
                        }
                        
                    }
                    .cornerRadius(10.0)
                    .background(RoundedRectangle(cornerRadius: 8)
                        .fill(colorScheme == .dark ? .gray900 : .white)
                                
                    )
                    
                    NavigationLink {
                        CreateMeetup2()
                    } label: {
                        Button(action: continueCreate){
                            Text("Continue")
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
                    
                }
                .frame(width: 320, height: 250)
                .padding()
            }
        }
    }
}

func continueCreate(){
    return
}

#Preview {
    CreateMeetup()
}
