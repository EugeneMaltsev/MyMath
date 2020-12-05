//
//  main.swift
//  Lab1
//
//  Created by Eugene Maltsev on 18.11.2020.
//  Copyright © 2020 Eugene Maltsev. All rights reserved.
//


import Foundation
import MyMath

func main() -> Int32{
    
    do{
        try print(MyMath.quadraticEquation(a: 0, b: -6, c: 9))
    } catch AllError.ZeroError{
        print(AllError.ZeroError)
    } catch AllError.ABCError{
        print(AllError.ABCError)
    } catch {
        print("something else")
    }
    
    return 0
    
}
exit(main())
