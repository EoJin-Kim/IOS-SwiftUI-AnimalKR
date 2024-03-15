//
//  CreditView.swift
//  AnimalKR
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct CreditView: View {
    var body: some View {
        VStack{
            Text("""
    Copyright EoJin
All Right
""").font(.footnote)
                .multilineTextAlignment(.center)
                .padding()
                .opacity(0.5)
        }//: VStack
    }
}

#Preview {
    CreditView()
}
