import XCTest
@testable import LeetCode

final class FriendsOfAppropriateAgesSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([16, 16]), 2),
        (([16, 17, 18]), 2),
        (([20, 30, 100, 110, 120]), 3)
    ]

    func testFriendsOfAppropriateAges() {
        let solution = FriendsOfAppropriateAges()
        for ((ages), answer) in questions {
            XCTAssertEqual(solution.numFriendRequests(ages), answer)
        }
    }
}
