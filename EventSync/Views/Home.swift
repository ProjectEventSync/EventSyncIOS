//
//  Home.swift
//  EventSync
//
//  Created by GreatNeel on 2/5/24.
//

import SwiftUI

struct Home: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var searchContent: String = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                HStack {
                    Text("My Meetups").font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Image("mail")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.gray300)
                        .padding(16)
                        .background(colorScheme == .dark ? .gray800 : .gray100)
                        .clipShape(Circle())
                    
                   
                    
                    Image("pfp")
                        .resizable()
                        .frame(width: 55, height: 55)
                        .clipShape(Circle())
                }
                
                HStack {
                    HStack {
                        Image("magnifyingGlass")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.gray400)
                            .padding()
                        Spacer()
                        TextField(text: $searchContent) {
                            Text("Search your meetups")
                                .font(.system(size:16, weight: .semibold))
                                .foregroundColor(colorScheme == .dark ? .gray300 : .gray400)
                        }
                    }
                    .background(colorScheme == .dark ? .gray900 : .gray100)
                    .cornerRadius(10)
                    
                    Spacer()
                    
                    Image("plus")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(colorScheme == .dark ? .gray300 : .gray400)
                        .padding()
                        .background(colorScheme == .dark ? .gray900 : .gray100)
                        .cornerRadius(10.0)
                        
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                
                
                MeetupCard()
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0))
                MeetupCard()
            }
            .padding()
        }
        
    }
}

#Preview {
    Home()
}
