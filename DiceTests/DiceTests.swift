//
//  DiceTests.swift
//  DiceTests
//
//  Created by bagasstb on 27/02/19.
//  Copyright © 2019 xProject. All rights reserved.
//

import XCTest
@testable import Dice

class DiceTests: XCTestCase {
    let main = ViewController()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRandomInteger() {
        let random = main.getRandom()
        var expected = false
        
        switch random {
        case 0:
            expected = true
            break
        case 1:
            expected = true
            break
        case 2:
            expected = true
            break
        case 3:
            expected = true
            break
        case 4:
            expected = true
            break
        case 5:
            expected = true
            break
        default:
            expected = false
        }
        
        XCTAssert(expected == true)
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testGetDice() {
        let image: UIImage? = main.getDiceImage(index: 0)
        XCTAssert(image == UIImage(named: "dice1"))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
//            main.getDiceImage(index: 5)
            // Put the code you want to measure the time of here.
        }
    }

}
