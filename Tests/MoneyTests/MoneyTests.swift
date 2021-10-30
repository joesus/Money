import XCTest
@testable import Money

final class MoneyTests: XCTestCase {

  func testCreatingZeroMoney() {
    let money = Money<USD>(amount: 0)

    XCTAssertEqual(
      money.amount,
      0,
      "Should create money with no amount"
    )
  }

  func testCreatingMaximumMoney() {
    let money = Money<USD>(amount: Decimal.greatestFiniteMagnitude)

    XCTAssertEqual(
      money.amount,
      Decimal.greatestFiniteMagnitude,
      "Should create money with no amount"
    )
  }

  func testCreatingDebit() {
    let money = Money<USD>(amount: -200)

    XCTAssertEqual(
      money.amount,
      -200,
      "Should create money with a negative amount"
    )
    XCTAssertTrue(
      (money.currency as CurrencyType.Type) is USD.Type,
      "Should create money with a currency"
    )
  }

  func testCreatingCredit() {
    let money = Money<EUR>(amount: 200)

    XCTAssertEqual(
      money.amount,
      200,
      "Should create money with a positive amount"
    )
    XCTAssertTrue(
      (money.currency as CurrencyType.Type) is EUR.Type,
      "Should create money with a currency"
    )
  }

}
