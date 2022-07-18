//
//  OpenStatus.swift
//  marra
//
//  Created by John Wang on 7/17/22.
//

import SwiftUI

struct OpenStatus: View {
    var body: some View {
        Text("open to talk :)")
            .foregroundColor(Color("Secondary"))
            .bold()
            .padding(.horizontal, 24)
            .padding(.vertical, 16)
            .background(Color("Success"))
            .cornerRadius(16)
    }
}

struct OpenStatus_Previews: PreviewProvider {
    static var previews: some View {
        OpenStatus()
    }
}
