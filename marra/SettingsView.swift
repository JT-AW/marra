//
//  SettingsView.swift
//  marra
//
//  Created by John Wang on 7/17/22.
//

import SwiftUI

struct SettingsView: View {
    var toggled:Bool = false
    
    @State private var state: Bool = profile.stats
    
    var body: some View {
        NavigationView {
            VStack {
                Text("settings")
                    .font(.system(size:42))
                    .bold()
                    .foregroundColor(Color("Secondary"))
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                HStack {
                    Text("status:")
                        .font(.system(size:36))
                        .bold()
                        .foregroundColor(Color("Secondary"))
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                    if (state) {
                        OpenStatus()
                            .onTapGesture{
                                syncTask()
                                NavigationLink(destination: SettingsView(), label: ())
                            }
                    } else {
                        OccStatus()
                            .onTapGesture{
                                syncTask()
                                NavigationLink(destination: SettingsView(), label: ())
                            }
                    }
                }
            }
        }
        func syncTask() {
            self.state.toggle()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
