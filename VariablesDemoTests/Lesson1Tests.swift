//
//  VariablesDemoTests.swift
//  VariablesDemoTests
//



import Testing
@testable import VariablesDemo

struct VariablesDemoTests {

	// Click the diamonds on the left to run the unit test.
	// Instructions are at the following website (https://jeremyskrdlant.github.io/NC3-Intro-To-Variables-Lesson/)
    @Test func LessonTest() async throws {
		var years = 0
		
		
		#expect(years == LESSON_TEST_ANSWER)
    }

}
