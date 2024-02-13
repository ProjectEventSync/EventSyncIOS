import SwiftUI

struct MeetupCard: View, Identifiable {
    @Environment(\.colorScheme) var colorScheme
    var id : Int
    var body: some View {
        VStack {
            HStack {
                Image("alps")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipped()
                    .cornerRadius(10)
                    
                Spacer(minLength: 15)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Excursion in the Alps")
                            .font(.system(size: 15, weight: .bold))
                        
                        Spacer()
                        
                        Image("pfp")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .clipShape(Circle())
                    }
                        
                    Spacer()
                    
                    Text("We will be spending the day hiking around Mont Blanc and will get a bite to eat later")
                        .font(.system(size: 10))
                        .foregroundColor(colorScheme == .dark ? .gray300 : .gray500)
                        
                    Spacer()
                    
                    HStack {
                        HStack {
                            HStack {
                                Image("userGroup")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(.gray400)
                                
                                Text("3")
                                        .font(.system(size: 10, weight: .semibold))
                                        .foregroundColor(colorScheme == .dark ? .gray300 : .gray500)
                                    
                                    
                                }.padding(5)
                                
                            }
                            .background(colorScheme == .dark ? .gray800 : .gray100)
                            .cornerRadius(25)
                            .overlay( /// apply a rounded border
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(colorScheme == .dark ? .gray700 : .gray200, lineWidth: 1)
                                )
                            
                            Spacer()
                            
                            HStack {
                                HStack {
                                    Image("clock")
                                        .resizable()
                                        .frame(width: 15, height: 15)
                                        .foregroundColor(.gray400)
                                    
                                    Text("8:00 AM")
                                        .font(.system(size: 10, weight: .semibold))
                                        .foregroundColor(colorScheme == .dark ? .gray300 : .gray500)
                                    
                                }.padding(5)
                            }
                            .background(colorScheme == .dark ? .gray800 : .gray100)
                            .cornerRadius(25)
                            .overlay( /// apply a rounded border
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(colorScheme == .dark ? .gray700 : .gray200, lineWidth: 1)
                                )
                            
                            Spacer()
                        
                            HStack {
                                HStack {
                                    Image("calendar")
                                        .resizable()
                                        .frame(width: 15, height: 15)
                                        .foregroundColor(.gray400)
                                    
                                    
                                    Text("2/14/23")
                                        .font(.system(size: 10, weight: .semibold))
                                        .foregroundColor(colorScheme == .dark ? .gray300 : .gray500)
                                    
                                }.padding(5)
                                
                            }
                            .background(colorScheme == .dark ? .gray800 : .gray100)
                            .cornerRadius(25)
                            .overlay( /// apply a rounded border
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(colorScheme == .dark ? .gray700 : .gray200, lineWidth: 1)
                                )
                            
                            
                        }
                        
                        
                    }
            }
            .frame(width: .infinity, height: 100)
            .padding()
        }
        .cornerRadius(10.0)
        .background(RoundedRectangle(cornerRadius: 8)
            .fill(colorScheme == .dark ? .gray900 : .white)
                    
            
        )
        
        
    }
    
}

#Preview {
    MeetupCard(id: 1)
}
