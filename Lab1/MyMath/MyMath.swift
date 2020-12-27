//
//  MyMath.m
//  MyMath
//
//  Created by Eugene Maltsev on 18.11.2020.
//  Copyright © 2020 Eugene Maltsev. All rights reserved.
//

import Foundation


public enum AllError: Error {
    case ZeroError
}

public func quadraticEquation(a: Double, b: Double, c: Double) throws -> Array<Double> {
    
    guard a != 0 else {throw AllError.ZeroError}

    let Discriminant: Double = b * b - 4 * a * c

    if Discriminant > 0
    {
        let d = Discriminant.squareRoot()
        let x1: Double = (-b + d) / (2 * a)
        let x2: Double = (-b - d) / (2 * a)

        if x1 < x2
        {
            return [x1, x2]
        } else {
            return [x2, x1]
        }
    } else if Discriminant == 0 {
        let x = -b / (2 * a)
        return [x]
    } else {
        return []
    }
}
