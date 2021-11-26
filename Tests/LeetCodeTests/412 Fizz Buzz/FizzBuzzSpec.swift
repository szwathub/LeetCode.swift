import XCTest
@testable import LeetCode

class FizzBuzzSpec: XCTestCase {

    fileprivate let questions: [((Int), [String])] = [
        ((3), ["1", "2", "Fizz"]),
        ((5), ["1", "2", "Fizz", "4", "Buzz"]),
        ((15), ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"])
    ]

    func testFizzBuzz() throws {
        let solution = FizzBuzz()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.fizzBuzz(n), answer)
        }
    }
}
