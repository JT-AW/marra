//
//  BackButton.swift
//  marra
//
//  Created by John Wang on 7/17/22.
//

import SwiftUI

struct BackButton: View {
    var body: some View {
        Text("back")
            .foregroundColor(Color("Cloud"))
            .bold()
            .padding(.horizontal, 16)
            .padding(.vertical, 16)
            .background(Color("Secondary"))
            .cornerRadius(16)
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
    }
}

