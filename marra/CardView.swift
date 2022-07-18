//
//  CardView.swift
//  marra
//
//  Created by John Wang on 7/17/22.
//

import SwiftUI

struct CardView: View {
    var person: Person = people[0]
    
    var body: some View {
        VStack(alignment: .center) {
            person.image
                .square()
                .cornerRadius(48)
            Text(person.name)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.vertical, 10.0)
        }
        .padding()
        .frame(height: 210)
        .background(person.gradient)
        .cornerRadius(30)

    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

