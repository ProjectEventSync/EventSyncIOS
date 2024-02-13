//
//  CreateMeetup2.swift
//  EventSync
//
//  Created by GreatNeel on 2/11/24.
//

import SwiftUI
import MapKit

struct CreateMeetup2: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var address: String = "";
    @State private var date: Date = Date()
    var body: some View {
        NavigationStack {
            ZStack {
                (colorScheme == .dark ? Color.black : Color.gray100)
                    .ignoresSafeArea()
                VStack {
                    Text("Where and when?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Map()
                        .cornerRadius(10.0)
                    
                    
                    Spacer()
                    
                    DatePicker(selection: $date) {
                        Text("Date / Time")
                            .foregroundColor(.gray400)
                            .fontWeight(.semibold)
                        
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 8)
                        .fill(colorScheme == .dark ? .gray900 : .white)
                                
                    )
                    
                    
                    
                    HStack {
                        Image("lockClosed")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(colorScheme == .dark ? .gray500 : .gray300)
                            .padding()
                        TextField(text: $address){
                            Text("No location selected")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundColor(.gray400)
                        }
                        
                    }
                    .cornerRadius(10.0)
                    .frame(width: .infinity, height: 25)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 8)
                        .fill(colorScheme == .dark ? .gray900 : .white)
                                
                    )
                    
                    
                    Spacer()
                    
                    NavigationLink {
                        CreateMeetup3()
                    } label : {
                        Text("Continue")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(.gray100)
                    }
                    .cornerRadius(10.0)
                    .frame(width: .infinity, height: 25)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 8)
                        .fill(.blue600)
                    )
                    
                }
                .padding()
            }
        }
    }
}

func continueCreate2(){
    return
}

#Preview {
    CreateMeetup2()
}
