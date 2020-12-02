//
//  main.swift
//  Lab1
//
//  Created by Roman Falchuk on 18.11.2020.
//  Copyright © 2020 Roman Falchuk. All rights reserved.
//

import Foundation
import MyMath

func main() -> Int32
{
//    print(MyMath.squareRoot(a:7, b:10.0, c:2.0))
//    print(MyMath.squareRoot(a: 1, b: -6, c: 9))
//    print(MyMath.squareRoot(a: 5, b: 3, c: 7))
    do{
        try print(MyMath.squareRoot(a: 0, b: -6, c: 9))
    } catch let (Error){
        print(Error)
    }
    
    
    return 0
}

exit(main())
