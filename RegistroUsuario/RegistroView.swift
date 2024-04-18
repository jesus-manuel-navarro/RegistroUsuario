//
//  RegistroView.swift
//  RegistroUsuario
//
//  Created by Jesus on 18/4/24.
//

import SwiftUI

struct RegistroView: View {
    
 @StateObject  var registro = RegistroViewModel()
    
    var body: some View {
        
        TextField("usuario", text : ($registro.nombre1))
        SecureField("password", text : ($registro.password1))
        Button(action: {
            registro.registrar()
        } ) {
            registro.comprobacion ? Text("Registro Correcto"):Text("Registrar")
            
        }
        registro.comprobacion ? Text(registro.estado):Text("")
    }
}

struct RegistroView_Previews: PreviewProvider {
    static var previews: some View {
        RegistroView()
    }
}
