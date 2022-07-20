//
//  PersonalView.swift
//  marra
//
//  Created by John Wang on 7/17/22.
//

import SwiftUI

struct PersonalView: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("you")
                        .font(.system(size:42))
                        .bold()
                        .foregroundColor(Color("Secondary"))
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    Spacer()
                    NavigationLink(destination: CreateView(), label: {
                        EditButton()
                    })
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }.padding()
                
                profile.image
                    .square()
                    .cornerRadius(75)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350)
                
                Text(profile.name)
                    .font(.system(size:36))
                    .bold()
                    .foregroundColor(Color("Secondary"))
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                LazyVGrid(columns: columns) {
                    ForEach(profile.interests, id: \.self) {interest in
                        Text(interest)
                            .font(.title2)
                            .padding()
                            .foregroundColor(Color("Cloud"))
                            .background(Color("Primary"))
                            .cornerRadius(12)
                            .bold()
                            .padding()
                    }
                }
            }
        }
    }
}

struct PersonalView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalView()
    }
}
