//
//  VariablesDemoTests.swift
//  VariablesDemoTests
//
//  Created by Jeremy Skrdlant on 12/13/24.
//


import Testing
@testable import VariablesDemo

struct VariablesDemoTests {

    @Test func LessonTest() async throws {
		var years = 0
		
		
		#expect(years == LESSON_TEST_ANSWER)
    }

}
