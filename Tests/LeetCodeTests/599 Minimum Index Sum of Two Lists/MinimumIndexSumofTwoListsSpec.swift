import XCTest
@testable import LeetCode

final class MinimumIndexSumofTwoListsSpec: XCTestCase {

    fileprivate let questions: [(([String], [String]), [String])] = [
        ((["Shogun", "Tapioca Express", "Burger King", "KFC"], ["Piatti", "The Grill at Torrey Pines", "Hungry Hunter Steakhouse", "Shogun"]), ["Shogun"]),
        ((["Shogun", "Tapioca Express", "Burger King", "KFC"], ["KFC", "Shogun", "Burger King"]), ["Shogun"]),
        ((["Shogun","Tapioca Express","Burger King","KFC"], ["KFC","Burger King","Tapioca Express","Shogun"]), ["KFC","Burger King","Tapioca Express","Shogun"])
    ]

    func testMinimumIndexSumofTwoLists() {
        let solution = MinimumIndexSumofTwoLists()
        for ((list1, list2), answer) in questions {
            XCTAssertEqual(solution.findRestaurant(list1, list2), answer)
        }
    }
}
