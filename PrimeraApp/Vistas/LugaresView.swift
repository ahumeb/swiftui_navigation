//
//  LugaresView.swift
//  PrimeraApp
//
//  Created by Andres Hume on 04/01/2020.
//  Copyright © 2020 Andres Hume. All rights reserved.
//

import SwiftUI

struct LugaresView: View {
    var body: some View {
        VStack {
            List {
                // Loop por el array de zonas
                ForEach(infoCiudad){ unaZona in
                    // Crear la sección con el nombre de la zona
                    Section(header: Text(unaZona.zona)) {
                        // El contenido es el loop por el array de POIs
                        ForEach(unaZona.pois, id: \.self){ unPunto in
                            Text(unPunto)
                        }
                    }
                }
            }
        }.navigationBarTitle(Text("New York"))
    }
}

struct LugaresView_Previews: PreviewProvider {
    static var previews: some View {
        LugaresView()
    }
}
