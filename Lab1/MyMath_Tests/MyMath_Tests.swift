//
//  MyMath_Tests.swift
//  MyMath_Tests
//
//  Created by Eugene Maltsev on 24.11.2020.
//  Copyright © 2020 Roman Falchuk. All rights reserved.
//

import XCTest
@testable import MyMath

class MyMath_Tests: XCTestCase {
    
    func testOneRoot()
    {
        let roots = squareRoot(a: 1,b: -6,c: 9)
        
        XCTAssertEqual(roots.count, 1)
        XCTAssertEqual(roots[0], 3.0)
    }
    
    func testTwoRoots()
    {
        let roots = squareRoot(a: 1, b: -10, c: 21)
        
        XCTAssertEqual(roots.count, 2)
        XCTAssertEqual(roots[0], 3.0)
        XCTAssertEqual(roots[1], 7.0)
    }
    
    func testNoRoots()
    {
        let roots = squareRoot(a: 5, b: 3, c: 7)
        XCTAssertEqual(roots.count, 0)
    }
    
    func testABC()
    {
        
    }
}

/*
 def test_ABC_Raises(self):
     with self.assertRaises(ValueError):
         ResolveSquareRoots(0, 2, 5)
     with self.assertRaises(TypeError):
         ResolveSquareRoots('', 2, 5)
     with self.assertRaises(TypeError):
         ResolveSquareRoots(1, '', 5)
     with self.assertRaises(TypeError):
         ResolveSquareRoots(1, 2, '')
 
import unittest
from Study.Equation import *


class Test_Equation(unittest.TestCase):
    def test_TwoRoots(self):
        Roots = ResolveSquareRoots(1, -10, 21)
        self.assertEqual(len(Roots), 2)
        self.assertEqual(Roots[0], 3.0)
        self.assertEqual(Roots[1], 7.0)

    def test_OneRoots(self):
        result = ResolveSquareRoots(1, -6, 9)
        self.assertEqual(len(result), 1)
        self.assertEqual(result[0], 3.0)

    def test_NoRoots(self):
        result = ResolveSquareRoots(5, 3, 7)
        self.assertEqual(len(result), 0)

    def test_ABC_Raises(self):
        with self.assertRaises(ValueError):
            ResolveSquareRoots(0, 2, 5)
        with self.assertRaises(TypeError):
            ResolveSquareRoots('', 2, 5)
        with self.assertRaises(TypeError):
            ResolveSquareRoots(1, '', 5)
        with self.assertRaises(TypeError):
            ResolveSquareRoots(1, 2, '')


if name == 'main':
    unittest.main()
*/
