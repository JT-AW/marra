//
//  HomeView.swift
//  marra
//
//  Created by John Wang on 7/17/22.
//

import SwiftUI

struct HomeView: View {
    @State var show: Bool = false
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            VStack (alignment: .leading,
                        spacing: 8) {
                HStack {
                    Text("marra")
                        .font(.system(size:42))
                        .bold()
                    .foregroundColor(Color("Secondary"))
                    Spacer()
                    OpenStatus()
                }
                ScrollView (showsIndicators: false) {
                    LazyVGrid (columns: columns) {
                        ForEach(people) { person in
                            NavigationLink(destination:
                                            DetailView(person: person)) {
                                CardView(person: person)
                            }
                        }
                    }
                    .padding()
                }
            }
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
