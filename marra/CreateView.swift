//
//  CreateView.swift
//  marra
//
//  Created by John Wang on 7/17/22.
//

import SwiftUI

struct CreateView: View {
    @State private var isShowingPhotoPicker = false
    @State private var actionState: Int? = 0
    
    @State private var avatarImage = UIImage(systemName: "plus")!
    @State private var name = ""
    @State private var contact = ""
    @State private var interest = ""
    @State private var interests: [String] = []
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 16) {
                Text("profile")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color("Secondary"))
                    .padding(.top)
                HStack {
                    Spacer()
                    Spacer()
                    VStack(alignment: .trailing) {
                        Image(uiImage: avatarImage)
                            .resizable()
                            .cornerRadius(16)
                            .padding(8)
                            .frame(width: 96, height: 96)
                            .foregroundColor(Color("Cloud"))
                            .background(Color("Primary"))
                            .cornerRadius(16)
                            .onTapGesture {
                                isShowingPhotoPicker = true
                            }
                    }
                    .sheet(isPresented: $isShowingPhotoPicker, content: {
                        ImagePicker(avatarImage: $avatarImage)
                    })
                    Spacer()
                    TextField("first name", text: $name)
                        .padding()
                        .font(.title)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                        .foregroundColor(Color("Secondary"))
                        .frame(width: 200, height: 50)
                    Spacer()
                }
                .padding()
                TextField("social/contact", text: $contact)
                    .padding()
                    .font(.title)
                    .foregroundColor(Color("Secondary"))
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                    .multilineTextAlignment(.center)
                    .frame(width: 250, height: 50)
                    .padding()
                interestBar
                VStack {
                    ForEach(interests, id: \.self) {interest in
                        Text(interest)
                            .font(.title2)
                            .foregroundColor(Color("Secondary"))
                            .bold()
                            .padding(8)
                    }
                }
                Spacer()
                VStack {
                    NavigationLink(destination: ContentView(), tag: 1, selection: $actionState) {
                        EmptyView()
                    }
                    
                    
                    HStack {
                        Text("Done")
                            .font(.title2)
                            .bold()
                            .padding(8)
                            .background(Color("Success"))
                            .cornerRadius(8)
                            .onTapGesture {
                                self.asyncTask()
                            }
                    }
                    .padding(.bottom)
                    .foregroundColor(Color("Secondary"))
                }
            }
        }
    }
    
    var interestBar: some View {
        HStack {
            Button(action: {
                interest = ""
                interests = []
            }, label: {
                Text("Clear")
                    .font(.title2)
                    .foregroundColor(Color("Primary"))
                    .bold()
                    .padding(8)
                    .background(Color("Secondary"))
                    .cornerRadius(8)
            })
            TextField("interests", text: $interest)
                .font(.title)
                .multilineTextAlignment(.center)
                .frame(width: 150, height: 50)
                .padding()
                .autocorrectionDisabled()
                .autocapitalization(.none)
            Button(action: {
                if (interests.count < 4) {
                    interests.append(interest)
                                    interest = ""
                }
            }, label: {
                Text("Add")
                    .font(.title2)
                    .foregroundColor(Color("Secondary"))
                    .bold()
                    .padding(8)
                    .background(Color("Primary"))
                    .cornerRadius(8)
            })
        }
    }
    
    func asyncTask() {
        if (name == "" || contact == "") {
            return
        }
        let contactImage = Image(uiImage: avatarImage)
        profile.name = name
        profile.contact = contact
        profile.image = contactImage
        profile.interests = interests
        self.actionState = 1
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
