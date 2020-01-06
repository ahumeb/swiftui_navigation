//
//  ContentView.swift
//  PrimeraApp
//
//  Created by Andres Hume on 04/01/2020.
//  Copyright © 2020 Andres Hume. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            VStack() {
                // Imagen de Encabezado
                ImagenTest(nombreImagen: "brooklyn_bridge")
                
                // Presentación de la App
                Text("New York")
                    .font(.largeTitle)
                Text("Una guía para saber qué hay que conocer")
                    .font(.footnote)
                    .foregroundColor(Color.gray)
                
                // Botón para ir al detalle
                NavigationLink(destination: LugaresView()) {
                    Text("Ver lugares de interes")
                }.padding(.top, 40.0)
                
            }
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
