//
//  velocimetrodigital.swift
//  creaGit
//
//  Created by Ricardo Gonzalez on 29/11/15.
//  Copyright © 2015 Ricardo Gonzalez. All rights reserved.
//

import Foundation

//: Playground - Velocimetro Digital

import UIKit

enum Velocidades : Int {
    
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 150
    
    init( velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    var indicador : Int
    
    init(){
        self.velocidad = .Apagado
        indicador = self.velocidad.rawValue
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        
        let letrero : String
        indicador = self.velocidad.rawValue
        
        switch self.velocidad{
            
        case .Apagado:
            self.velocidad = .VelocidadBaja
            letrero = "Apagado"
            
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
            letrero = "Velocidad Baja"
            
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            letrero = "Velocidad Media"
            
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
            letrero = "Velocidad Alta"
            
        }
        
        return (actual: indicador, velocidadEnCadena: letrero)
    }
}

var auto = Auto()

var tupla : (actual : Int, velocidadEnCadena : String )

for var itera in 1...20 {
    
    tupla = auto.cambioDeVelocidad()
    print("\(tupla.actual), \(tupla.velocidadEnCadena)")
}
