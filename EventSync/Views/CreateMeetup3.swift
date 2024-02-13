//
//  CreateMeetup3.swift
//  EventSync
//
//  Created by GreatNeel on 2/11/24.
//

import SwiftUI

struct CreateMeetup3: View {
    @State var selectedDate: Date = Date()
    var body: some View {
        ZStack {
            VStack {
                Text("Date and Time?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                DatePicker("Select Date", selection: $selectedDate)
                                  .padding(.horizontal)
            }
        }
    }
}

#Preview {
    CreateMeetup3()
}
