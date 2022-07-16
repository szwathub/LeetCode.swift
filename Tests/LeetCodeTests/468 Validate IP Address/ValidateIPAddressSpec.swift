import XCTest
@testable import LeetCode

final class ValidateIPAddressSpec: XCTestCase {

    fileprivate let questions: [((String), String)] = [
        (("172.16.254.1"), "IPv4"),
        (("2001:0db8:85a3:0:0:8A2E:0370:7334"), "IPv6"),
        (("2001:0db8:85a3:g:0:8A2E:0370:7334"), "Neither"),
        (("2001:0db8:85a3::0:8A2E:0370:7334"), "Neither"),
        (("2001:0db8:85a3:12345:0:8A2E:0370:7334"), "Neither"),
        (("256.256.256.256"), "Neither"),
        (("2001:0db8:85a3:0:0:8A2E:0370:7334:"), "Neither"),
        (("172.16.254"), "Neither"),
        (("172.16..254"), "Neither"),
        (("172.16.2345.254"), "Neither"),
        (("172.16.01.254"), "Neither"),
        (("172.16.f.254"), "Neither")
    ]

    func testValidateIPAddress() {
        let solution = ValidateIPAddress()
        for ((queryIP), answer) in questions {
            XCTAssertEqual(solution.validIPAddress(queryIP), answer)
        }
    }
}
