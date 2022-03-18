import XCTest
@testable import LeetCode

final class SimpleBankSystemSpec: XCTestCase {

    func testSimpleBankSystem() {
        let bank = SimpleBankSystem([10, 100, 20, 50, 30])

        XCTAssertEqual(bank.withdraw(3, 10), true)
        XCTAssertEqual(bank.transfer(5, 1, 20), true)
        XCTAssertEqual(bank.deposit(5, 20), true)
        XCTAssertEqual(bank.transfer(3, 4, 15), false)
        XCTAssertEqual(bank.withdraw(10, 50), false)
        XCTAssertEqual(bank.deposit(10, 50), false)
    }
}
