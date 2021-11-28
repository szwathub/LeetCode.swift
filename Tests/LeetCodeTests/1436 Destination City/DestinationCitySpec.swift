import XCTest
@testable import LeetCode

final class DestinationCitySpec: XCTestCase {

    fileprivate let questions: [(([[String]]), String)] = [
        (([["London", "New York"], ["New York", "Lima"], ["Lima", "Sao Paulo"]]), "Sao Paulo"),
        (([["B", "C"], ["D", "B"], ["C", "A"]]), "A"),
        (([["A", "Z"]]), "Z")
    ]

    func testDestinationCity() throws {
        let solution = DestinationCity()
        for ((paths), answer) in questions {
            XCTAssertEqual(solution.destCity(paths), answer)
        }
    }
}
