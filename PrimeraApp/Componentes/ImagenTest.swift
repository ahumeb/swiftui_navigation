//
//  ImagenTest.swift
//  PrimeraApp
//
//  Created by Andres Hume on 04/01/2020.
//  Copyright © 2020 Andres Hume. All rights reserved.
//

import SwiftUI

struct ImagenTest: View {
    
    var nombreImagen: String
    
    var body: some View {
        Image(nombreImagen)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
        .shadow(radius: 10)
        .padding()
    }
}

struct ImagenTest_Previews: PreviewProvider {
    static var previews: some View {
        ImagenTest(nombreImagen: "brooklyn_bridge")
    }
}
