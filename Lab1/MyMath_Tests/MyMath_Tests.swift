//
//  MyMath_Tests.swift
//  MyMath_Tests
//
//  Created by Eugene Maltsev on 24.11.2020.
//  Copyright © 2020 Eugene Maltsev. All rights reserved.
//

import XCTest
@testable import MyMath


class MyMath_Tests: XCTestCase {


    func testZero() throws {

        let result = try quadraticEquation(a: 0, b: -6, c: 9)
        XCTAssertThrowsError(result)

    }
    
    func testNoRoots() throws {
 
        let roots = try quadraticEquation(a: 5, b: 3, c: 7)
    
        XCTAssertEqual(roots.count, 0)
    
    }
    
    func testOneRoot() throws {
        
        let result = try quadraticEquation(a: 1, b: -6, c: 9)
        XCTAssertEqual(result.count, 1)
        XCTAssertEqual(result[0], 3.0)

    }
    
    func testTwoRoots() throws {
        
        let roots = try quadraticEquation(a: 1, b: -10, c: 21)
        
        XCTAssertEqual(roots.count, 2)
        XCTAssertEqual(roots[0], 3.0)
        XCTAssertEqual(roots[1], 7.0)
    
    }
    
}
