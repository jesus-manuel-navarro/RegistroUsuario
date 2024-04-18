//
//  RegistroViewModel.swift
//  RegistroUsuario
//
//  Created by Jesus on 18/4/24.
//
import SwiftUI
import Foundation

class RegistroViewModel : ObservableObject{
    
    @Published var nombre1 : String = ""
    @Published var password1 : String = ""
    @Published var comprobacion: Bool = false
    @Published var estado:String = ""

    
    func registrar() -> String {
        
        var datos = User(nombre : nombre1, password : password1)
       print("acceso concedido a usuario \(datos.nombre)")
        comprobacion = true
        estado = "acceso concedido"
        
        return "acceso concedido"
    }
    
}
