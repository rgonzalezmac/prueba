//
//  minireto.swift
//  creaGit
//
//  Created by Ricardo Gonzalez on 12/11/15.
//  Copyright © 2015 Ricardo Gonzalez. All rights reserved.
//

import Foundation

import UIKit

var numeros = 1...100

for var i = 0; i <= numeros.count; i++ {
    
    
    
    if i % 5 == 0 && i != 0{
        print(i,"Bingo")
        
    }
    if i % 2 == 0{
        print(i,"Par")
        
    }
    if i % 2 == 1 {
        print(i,"Impar")
        
    }
    
    if i < 40 && i > 30{
        print(i,"Viva Swift")
    }
    
    
}