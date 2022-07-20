//
//  EditButton.swift
//  marra
//
//  Created by John Wang on 7/19/22.
//

import SwiftUI

struct EditButton: View {
    var body: some View {
        Text("edit")
            .foregroundColor(Color("Cloud"))
            .bold()
            .padding(.horizontal, 16)
            .padding(.vertical, 16)
            .background(Color("Secondary"))
            .cornerRadius(16)
    }
}

struct EditButton_Previews: PreviewProvider {
    static var previews: some View {
        EditButton()
    }
}
