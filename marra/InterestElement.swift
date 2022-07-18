//
//  InterestElement.swift
//  marra
//
//  Created by John Wang on 7/17/22.
//

import SwiftUI

struct InterestElement: View {
    var interest: String = people[0].interests[0]
    
    var body: some View {
        Text(interest)
            .foregroundColor(Color("Primary"))
            .bold()
            .padding(.horizontal, 16)
            .padding(.vertical, 16)
            .background(Color("Cloud"))
            .cornerRadius(16)
    }
}

struct InterestElement_Previews: PreviewProvider {
    static var previews: some View {
        InterestElement()
    }
}
