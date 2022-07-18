//
//  DetailView.swift
//  marra
//
//  Created by John Wang on 7/17/22.
//

import SwiftUI
import Introspect

struct DetailView: View {
    var person: Person = people[1]
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    @State var uiTabarController: UITabBarController?
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 32) {
                person.image
                    .square()
                    .cornerRadius(75)
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    
                Text(person.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                if (person.stats) {
                    OpenStatus()
                } else {
                    OccStatus()
                }
                
                Text("Interests")
                    .foregroundColor(.white)
                    .font(.title2)
                    .bold()
                    .padding(.bottom, -8.0)
                LazyVGrid (columns: columns) {
                    ForEach(person.interests, id: \.self) { interest in
                        InterestElement(interest: interest)
                    }
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
        }
        .background(person.gradient)
        .introspectTabBarController { (UITabBarController) in
            UITabBarController.tabBar.isHidden = true
            uiTabarController = UITabBarController
        }.onDisappear{
            uiTabarController?.tabBar.isHidden = false
        }
        .navigationBarItems(leading: NavigationLink (destination: ContentView()) {
        })
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

