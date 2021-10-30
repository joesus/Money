import Money
import XCTest

class CurrencyTests: XCTestCase {

  func testUSD() {
    XCTAssertEqual(
      USD.code,
      "USD",
      "US Dollars should have a well known code"
    )
    XCTAssertEqual(
      USD.symbol,
      "$",
      "US Dollars should have a well known symbol"
    )
    XCTAssertEqual(
      USD.name,
      "US Dollar",
      "US Dollars should have a well known name"
    )
  }

  func testEUR() {
    XCTAssertEqual(
      EUR.code,
      "EUR",
      "Euros should have a well known code"
    )
    XCTAssertEqual(
      EUR.symbol,
      "€",
      "Euros should have a well known symbol"
    )
    XCTAssertEqual(
      EUR.name,
      "Euro",
      "Euros should have a well known name"
    )
  }
}
