//
//  MyMath.m
//  MyMath
//
//  Created by Roman Falchuk on 18.11.2020.
//  Copyright © 2020 Roman Falchuk. All rights reserved.
//

import Foundation
// Zero
// ABC
// Raise
public func squareRoot(a: Double, b: Double, c: Double) -> Array<Double>
{

    let Discriminant: Double = b * b - 4 * a * c

    if Discriminant > 0
    {
        let d = Discriminant.squareRoot()
        let x1: Double = (-b + d) / (2 * a)
        let x2: Double = (-b - d) / (2 * a)

        if x1 < x2
        {
            return [x1, x2]
        }else{
            return [x2, x1]
        }
    }
    else if Discriminant == 0
    {
        let x = -b / (2 * a)
        return [x]
    }else{
        return []
    }
}


 /*
 import math


 def ResolveSquareRoots(a, b, c):
     if a or b or c == str():
         pass

     if isinstance(a, str) or isinstance(b, str) or isinstance(c, str):
         raise TypeError('I do not want to work')

     if a == 0:
         raise ValueError('Zero')

     else:

         try:

             Discriminant = b * b - 4 * a * c

             if Discriminant > 0:
                 d = math.sqrt(Discriminant)
                 x1 = (-b + d) / (2 * a)
                 x2 = (-b - d) / (2 * a)

                 if x1 < x2:
                     return x1, x2
                 else:
                     return x2, x1

             elif Discriminant == 0:
                 x = -b / (2 * a)
                 return (x,)

             else:
                 return ()
         except:
             return None

-------------
 def main():
     ResolveSquareRoots(1, -10, 21)


 if name == 'main':
     main()
-------------
 */
