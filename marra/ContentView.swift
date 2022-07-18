//
//  ContentView.swift
//  marra
//
//  Created by John Wang on 7/17/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        if (profile.name == "" || profile.contact == "") {
            CreateView()
        } else {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "location.circle")
                    }
                    .background(Color("Cloud"))
                PersonalView()
                    .tabItem {
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 32, height: 48)
                            
                    }
                SettingsView()
                    .tabItem {
                        Image(systemName: "gearshape.circle")
                    }
            }
            .accentColor(Color("Primary"))
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
