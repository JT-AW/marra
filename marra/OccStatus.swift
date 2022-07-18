//
//  OccStatus.swift
//  marra
//
//  Created by John Wang on 7/17/22.
//

import SwiftUI

struct OccStatus: View {
    var body: some View {
        Text("busy right now :/")
            .foregroundColor(Color("Cloud"))
            .bold()
            .padding(.horizontal, 24)
            .padding(.vertical, 16)
            .background(Color("Null"))
            .cornerRadius(16)
    }
}

struct OccStatus_Previews: PreviewProvider {
    static var previews: some View {
        OccStatus()
    }
}
