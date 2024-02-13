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
            ZStack {
                (colorScheme == .dark ? Color.black : Color.gray100)
                .ignoresSafeArea()
                
                VStack {
                    HStack {
                        Text("My Meetups").font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Spacer()
                        NavigationLink {
                            Invitations()
                        } label: {
                            Image("mail")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.gray300)
                                .padding(15)
                                .background(colorScheme == .dark ? .gray900 : .white)
                            
                                .clipShape(Circle())
                        }
                        
                        
                        NavigationLink {
                            UserSettings()
                        } label : {
                            Image("alps")
                                .resizable()
                                .frame(width: 55, height: 55)
                                .clipShape(Circle())
                        }
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
                        .background(colorScheme == .dark ? .gray900 : .white)
                        .cornerRadius(10)
                        
                        Spacer()
                        
                        NavigationLink {
                            CreateMeetup()
                        } label: {
                            Image("plus")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(colorScheme == .dark ? .gray300 : .gray400)
                                .padding()
                                .background(colorScheme == .dark ? .gray900 : .white)
                                .cornerRadius(10.0)
                        }
                        
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    ScrollView {
                        ForEach(1..<10) { i in
                            MeetupCard(id: i)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                        }
                        
                    }
                    .cornerRadius(10.0)
                    .frame(width: .infinity, height: .infinity)
                }
                .padding()
            }
        }
        
    }
}

#Preview {
    Home()
}
