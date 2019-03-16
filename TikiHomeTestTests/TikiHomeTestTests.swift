//
//  TikiHomeTestTests.swift
//  TikiHomeTestTests
//
//  Created by Sang Nguyen on 3/16/19.
//  Copyright © 2019 Sang Nguyen. All rights reserved.
//

import XCTest
@testable import TikiHomeTest

class TikiHomeTestTests: XCTestCase {
    
    override func setUp() {

    }

    override func tearDown() {

    }

    func testOneWord() {
        let inputKeyword = "iPhone"
        let finalKeyword = "iPhone"
        
        let keyword = Keyword(text: inputKeyword, icon: nil)
        let viewModel = HotKeywordViewModel(keyword: keyword)
        XCTAssert(finalKeyword == viewModel.text, "Result: \(viewModel.text) - Expected: \(finalKeyword)")
    }
    
    func testTwoWords() {
        let inputKeyword = "iPhone iPhone"
        let finalKeyword = "iPhone\niPhone"
        
        let keyword = Keyword(text: inputKeyword, icon: nil)
        let viewModel = HotKeywordViewModel(keyword: keyword)
        XCTAssert(finalKeyword == viewModel.text, "Result: \(viewModel.text) - Expected: \(finalKeyword)")
    }
    
    func testThreeWords() {
        let inputKeyword = "iPhone iPhone iPhone"
        let finalKeyword = "iPhone\niPhone iPhone"
        
        let keyword = Keyword(text: inputKeyword, icon: nil)
        let viewModel = HotKeywordViewModel(keyword: keyword)
        XCTAssert(finalKeyword == viewModel.text, "Result: \(viewModel.text) - Expected: \(finalKeyword)")
    }
    
    func testThreeWords2() {
        let inputKeyword = "iPhone iPhone X"
        let finalKeyword = "iPhone\niPhone X"
        
        let keyword = Keyword(text: inputKeyword, icon: nil)
        let viewModel = HotKeywordViewModel(keyword: keyword)
        XCTAssert(finalKeyword == viewModel.text, "Result: \(viewModel.text) - Expected: \(finalKeyword)")
    }
    
    func testFourWords() {
        let inputKeyword = "iPhone iPhone X M"
        let finalKeyword = "iPhone\niPhone X M"
        
        let keyword = Keyword(text: inputKeyword, icon: nil)
        let viewModel = HotKeywordViewModel(keyword: keyword)
        XCTAssert(finalKeyword == viewModel.text, "Result: \(viewModel.text) - Expected: \(finalKeyword)")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
